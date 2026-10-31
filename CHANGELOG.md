# Endringer

Korte punkter per versjon, nyeste først. Utgivelsen («Utgivelse» i Actions) henter teksten under
`## vX.Y.Z` og viser den i Strømleser når en ny versjon finnes. Skriv for brukeren, på norsk.

## v0.5.1

- **Kode for å endre.** Under Innstillinger › Generelt › Tilgang kan du sette en kode. Da kan alle se alt, men bare den som har koden kan endre innstillinger, enheter, bygg, priser og import. Etter 10 minutter uten endringer låses det igjen. Fint for et nettbrett som står fremme.
- **Slik står det på fakturaen.** Under Økonomi › måned vises strøm og nettleie med de samme linjene som fakturaene: spotpris, månedspris, energiledd dag og natt, avgifter, kapasitetsledd, Norgespris-avregning, salg og plusskunde.
- «Gjennomfakturering» kan velges på strømavtalen under Priser (én faktura fra leverandøren, eller to).
- «Herav mva» stemmer nå med fakturaen ved Norgespris (mva regnes av spotprisen).
- Nye bygg får ingen forhåndsvalgt leverandør; fyll inn din egen under Priser.
- Sidene lastes raskere (komprimert), særlig Hjem på mobil og nettbrett.

## v0.5.0

- **Oppdater fra nettsiden.** Strømleser ser etter nye versjoner én gang i døgnet og viser hva som er nytt. Trykk «Oppdater nå», så lastes den ned, sjekkes og installeres, og siden lastes på nytt. Starter ikke den nye versjonen, settes den forrige tilbake.
- Versjonen står nederst i menyen (PC) og nederst på siden (mobil).
- Under Innstillinger › Generelt › Oppdatering kan du slå av sjekken, velge automatisk oppdatering om natta og ta med testversjoner.
- Docker og Unraid får melding og endringer, med kommandoen for å hente det nye bildet.
- Denne versjonen må installeres på den gamle måten én siste gang.

## v0.4.1

- Historikk › Forbruk › Dag: egen sol og forbruk regnes fra Solar Assistant-dagstotalene når sola ikke er målt time for time (merket som anslag).

## v0.4.0

- 3D-hus på Hjem: dra for å snu og vippe, to fingre eller musehjulet for å zoome, dobbelttrykk for å gå nærmere, og knapp for å tilbakestille.
- Lys og skygger fra sola på riktig plass etter posisjon, klokkeslett og hvilken vei huset vender (nytt valg i byggskjemaet).
- Funkis og Saltak i 3D. Scenen er større på PC.

## v0.3.5

- Import av Solar Assistant-totaler (måned og dag, også zip).
- Historikk › Sol: hva solcellene har gitt i inntekt og sparte kroner.
- Spotpriser og satser tilbake til 2023.
