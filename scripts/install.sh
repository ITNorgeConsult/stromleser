#!/usr/bin/env bash
# Installerer Strømleser som systemd-tjeneste på Raspberry Pi eller annen Linux.
#
#   sudo ./install.sh                     # henter siste versjon fra GitHub
#   sudo ./install.sh ./stromleser-linux-arm64   # bruker en fil du allerede har
#   sudo ./install.sh --low-write         # i tillegg: logger i minnet (sparer minnekortet)
#   sudo ./install.sh --uninstall         # fjerner tjenesten (data beholdes)
#
# Privat repo: sett GITHUB_TOKEN før du kjører skriptet.
set -euo pipefail

REPO="ITNorgeConsult/stromleser"
BIN=/usr/local/bin/stromleser
UNIT=/etc/systemd/system/stromleser.service
DATA=/var/lib/stromleser
LOW_WRITE=0
UNINSTALL=0
SRC=""

for arg in "$@"; do
  case "$arg" in
    --low-write) LOW_WRITE=1 ;;
    --uninstall) UNINSTALL=1 ;;
    -h|--help) sed -n '2,10p' "$0"; exit 0 ;;
    *) SRC="$arg" ;;
  esac
done

say() { printf '\033[1;34m»\033[0m %s\n' "$*"; }
die() { printf '\033[1;31m✗\033[0m %s\n' "$*" >&2; exit 1; }

[ "$(id -u)" -eq 0 ] || die "Kjør med sudo."
command -v systemctl >/dev/null || die "Fant ikke systemd. Bruk Docker i stedet."

if [ "$UNINSTALL" -eq 1 ]; then
  say "Stopper og fjerner tjenesten (data i $DATA beholdes)"
  systemctl disable --now stromleser stromleser-update.path 2>/dev/null || true
  rm -f "$UNIT" "$BIN" "$BIN.prev" "$BIN.new" /etc/systemd/system/stromleser-update.path /etc/systemd/system/stromleser-update.service
  rm -rf "$DATA/update"   # nedlastede oppdateringer (selve dataene beholdes)
  systemctl daemon-reload
  say "Ferdig."
  exit 0
fi

case "$(uname -m)" in
  aarch64|arm64) ARCH=arm64 ;;
  x86_64|amd64)  ARCH=amd64 ;;
  *) die "Arkitekturen $(uname -m) støttes ikke ennå (trenger 64-bit: arm64 eller amd64)." ;;
esac

AUTH=()
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

if [ -n "$SRC" ]; then
  [ -f "$SRC" ] || die "Fant ikke filen $SRC"
  cp "$SRC" "$TMP/stromleser"
else
  say "Henter siste versjon for $ARCH fra GitHub"
  [ -n "${GITHUB_TOKEN:-}" ] && AUTH=(-H "Authorization: Bearer $GITHUB_TOKEN")
  API="https://api.github.com/repos/$REPO/releases/latest"
  ASSET_URL="$(curl -fsSL "${AUTH[@]}" "$API" | python3 -c '
import json, sys
arch = sys.argv[1]
for a in json.load(sys.stdin).get("assets", []):
    if a.get("name") == "stromleser-linux-" + arch:
        print(a["url"])
' "$ARCH")" || true
  [ -n "$ASSET_URL" ] || die "Fant ingen utgivelse. Er repoet privat? Sett GITHUB_TOKEN, eller oppgi filen selv."
  curl -fsSL "${AUTH[@]}" -H "Accept: application/octet-stream" -o "$TMP/stromleser" "$ASSET_URL"
fi

chmod 0755 "$TMP/stromleser"
"$TMP/stromleser" version >/dev/null 2>&1 || die "Filen kan ikke kjøres på denne maskinen (feil arkitektur?)."
say "Installerer $("$TMP/stromleser" version)"

id stromleser >/dev/null 2>&1 || useradd --system --no-create-home --home-dir "$DATA" --shell /usr/sbin/nologin stromleser
install -m 0755 "$TMP/stromleser" "$BIN"

# Tjenesten, og oppdateringstjenesten som lar «Oppdater nå» i grensesnittet
# bytte programfila (motoren selv har ikke rettigheter til det).
for f in stromleser.service stromleser-update.path stromleser-update.service; do
  if [ -f "$(dirname "$0")/../deploy/systemd/$f" ]; then
    install -m 0644 "$(dirname "$0")/../deploy/systemd/$f" "/etc/systemd/system/$f"
  else
    curl -fsSL "${AUTH[@]}" "https://raw.githubusercontent.com/$REPO/main/deploy/systemd/$f" -o "/etc/systemd/system/$f" \
      || die "Fant ikke tjenestefilen $f."
  fi
done

if [ "$LOW_WRITE" -eq 1 ]; then
  say "Lagrer systemlogger i minnet for å spare minnekortet"
  mkdir -p /etc/systemd/journald.conf.d
  cat > /etc/systemd/journald.conf.d/stromleser-low-write.conf <<CONF
[Journal]
Storage=volatile
RuntimeMaxUse=48M
CONF
  systemctl restart systemd-journald
fi

systemctl daemon-reload
systemctl enable stromleser >/dev/null 2>&1
systemctl enable --now stromleser-update.path >/dev/null 2>&1
systemctl restart stromleser
sleep 2
systemctl is-active --quiet stromleser || { journalctl -u stromleser -n 30 --no-pager; die "Tjenesten startet ikke."; }

HOST="$(hostname)"
say "Strømleser kjører. Åpne http://$HOST.local:8080 i nettleseren."
