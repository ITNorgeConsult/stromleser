# Endringer

Korte punkter per versjon, nyeste først. Utgivelsen («Utgivelse» i Actions) henter teksten under
`## vX.Y.Z` og viser den i Strømleser når en ny versjon finnes. Skriv for brukeren, på norsk.

## v0.13.1

- **Rettet feil på ladersiden:** siden kunne vise «500 Internal Error» i «12 måneder» når du dro over søylene fra i fjor.
- **Bil per økt** er tydeligere: det første valget heter nå «Automatisk: BMW iX (BMW-en meldte at den ladet)». Det er ikke en ekstra bil, bare Strømlesers eget valg.

## v0.13.0

- **Alle år for hver lader:** under Historikk › Lading › en lader viser «Alle år» hva laderen har ladet måned for måned helt fra starten, og en tabell per år med kWh, antall økter, ladetid, snitt og maks kW.
- **«Data fra …»** på ladersiden viser hvor langt tilbake Strømleser har data for laderen.
- **Mer om hver ladeøkt:** hvor lenge bilen sto tilkoblet, omtrent hvor lenge den ladet, og snitt og maks kW.
- **Importer ladeøkter fra Easee:** last opp eksporten fra Easee (CSV per lader) under Importer data. Økter som mangler legges til; de som allerede er hentet fra Easee, endres ikke. Mangler timene, anslås energien per time (merket med *), og ekte timer fra Easee går foran. Navn, adresse og telefon i fila leses ikke inn.

## v0.12.1

- **Huset vugger nå mot høyre først** og så tilbake.
- Nye skjermbilder i README.

## v0.12.0

- **Lysere infoboks i diagrammene:** boksen over søylene er nå lys og halvgjennomsiktig i stedet for mørk, så den er roligere å se på.
- **Bølger i kortene under Historikk:** kortene fylles nedenfra med en rolig bølge. Nivået er prosenten som står i kortet for valgt periode: Kjøpt og Egen sol som andel av forbruket, Solgt og Brukt selv som andel av sola. I Forbruk-kortet betyr den stiplede streken «i fjor»: over streken er mer enn samme tid i fjor, under er mindre.
- **Garasjen:** porten vender mot grusplassen, med en lader på hver side. Veien kommer opp til porten, bilen står foran porten med fronten mot veien, og steinmuren er borte.
- **Mer atmosfære rundt huset:** dypere himmel, mørkere kanter og en myk skygge under tomta, så huset står tydeligere fram, både i lyst og mørkt tema.

## v0.11.2

- **3D-huset på skjermer med eldre grafikk:** 3D virker nå også der nettleseren bare har WebGL 1, for eksempel Samsung Family Hub-kjøleskap. Der kjører det i lett modus uten skygger, så det går jevnt, og huset kan snus med fingrene. Før ble det vist en flat 2D-tegning.

## v0.11.1

- **Ny side: Innstillinger › Generelt › Denne skjermen.** Viser nettleser, skjerm, berøring, grafikk (WebGL 1 og 2, skjermkort) og om 3D-huset på Hjem virker på enheten, med feilmeldingen hvis det ikke gjør det. «Test 3D nå» prøver 3D-motoren på stedet, og «Kopier alt» gir alle detaljene som tekst. Nyttig på kjøleskap, nettbrett og andre skjermer.
- **«Last inn på nytt»** på samme side tømmer nettleserens hurtigbuffer for Strømleser og laster alt på nytt.

## v0.11.0

- **Mer levende 3D-hus (Funkis):** garasjen står nå bak huset med porten mot grusplassen, og glassgang mellom byggene. Skogkant med gran, furu og bjørk bak tomta, fjellknauser, epletrær, plen med striper etter klipping, steinmur ved grusplassen, terrasse med pergola og solseil ved garasjen, og stående trekledning ved vinduene. Trærne vaier rolig i vinden.
- **Speilvend:** under Bygg › Utseende på Hjem kan du speilvende tegningen, så garasjen står bak til høyre i stedet for bak til venstre.
- **Lysere kveld og natt:** huset har fått blått måneskinn og lysere farger, så detaljene synes også i mørket.
- **Solbuen:** soloppgang står alltid til venstre og solnedgang til høyre. Om natta går månen fra solnedgang mot soloppgang. Sola og månen er større og tydeligere. Huset vugger litt raskere, og først mot høyre.
- **Kortene under huset** sitter ikke lenger halvveis over bildet, og himmelen tones jevnt over i kortet.
- **Nye ikoner:** Forbruk har fått søylediagrammet, Historikk en klokke.
- «Låst» vises ikke lenger nederst i menyen. Lås opp under Innstillinger (eller når en endring ber om koden); når det er låst opp, vises «Låst opp» til det låses igjen.
- Versjonen vises som «Strømleser v0.11.0».
- Overskriften «Historikk» har samme størrelse på alle fanene.

## v0.10.1

- **Solbuen etter solnedgang:** sola ble stående i enden av buen en stund etter solnedgang. Nå går buen over til natt (månen) etter solas egne tider.
- Nye skjermbilder i README med de nye navnene.

## v0.10.0

- **Nye navn:** «Økonomi» heter nå **Forbruk**. Under Historikk heter fanene **Strøm**, Sol, **Lading** og Rapporter. På Hjem heter kortet med laderne «Lading», siden det viser laderne og ikke bilen.
- **Bil og lader i entall:** under Lading står det «Bil» og «Lader» når du har én, og «Biler» og «Ladere» når du har flere.
- **Ledig lader** viser «Ikke tilkoblet» i stedet for «Ingen bil», og navnet på bilen som vanligvis står der (for eksempel «Zeekr X · ikke tilkoblet»).
- **Solbuen over huset** ligger nå fast øverst i bildet, så du alltid ser sola, uansett hvordan huset snur seg. Den viser soloppgang og solnedgang, og sola går langs buen etter klokka. Buen er lav om vinteren og høy om sommeren. Om natta går månen mot neste soloppgang. Skyggene følger fortsatt sola.
- **Søylediagrammene** vokser nå fra bunnen av boksen og opp til riktig høyde. Før kunne søylene strekke seg over hele siden et øyeblikk når siden ble åpnet.

## v0.9.2

- **Morgendagens priser:** kortet holder seg borte når du har lukket det, også etter at siden lastes på nytt.

## v0.9.1

- **Morgendagens priser med Norgespris:** når prisen nesten er lik hele døgnet, vises billigst og dyrest i nøytrale farger i stedet for grønt og rødt.
- **Kapasitetstrinnet:** merket for snittet legger seg ikke lenger oppå søylen når måneden bare har ett døgn, og det er lett å lese også når det krysser grenselinja.
- Siden for laderen viser ikke lenger merknaden om UTC.

## v0.9.0

- **Nettbrettvisning.** Trykk på firkant-ikonet øverst på Hjem. Du får en tavle for hele skjermen: stor 3D-modell, klokke, effekt nå, prisen nå med dagens kurve, lading og bilen. Menyen er borte, og knappene forsvinner når ingen rører skjermen. Fint for en iPad på veggen.
- **Morgendagens priser:** når de er klare, kommer det et kort på Hjem med snitt, de billigste tre timene og dyreste time, med døgnet i farger fra grønt til rødt.
- **Styr laderne:** på siden for hver lader kan du starte, pause, fortsette og stoppe lading, og velge «Lad nå» utenom ladeplanen. Du trykker to ganger for å sende, og koden for å endre gjelder.
- **Kvarterspriser:** spotprisene hentes fra Nord Pool i 15-minutters perioder, slik fakturaen regner. Er Nord Pool utilgjengelig, brukes timepriser som før.
- **Norgespris-påminnelse** i desember og januar på Økonomi, med hva Norgespris har spart (eller kostet) deg det siste året.
- **Easee-koder** vises med forklaring på siden for laderen (for eksempel «venter på ladeplanen» eller «begrenset av bilen»).
- **Nye diagrammer:** kapasitetstrinnet har fått 3D-søyler med fargen etter hvor nær grensen du er, «Siste time» er en levende kurve, og døgnkartet for laderen er animert.
- Bilsiden viser BMW-kodene med tekst, skjuler tomme verdier og viser korte tider.

## v0.8.1

- **Bilen vises med en gang etter oppstart.** Strømleser henter siste kjente status fra BMW når den starter (ladenivå, rekkevidde, kilometerstand, ladekabel). Før måtte du vente til bilen sendte noe.
- Statusen huskes også straks de første verdiene kommer.
- Mangler det fortsatt data, står det «Venter på data fra bilen» i stedet for 0 %.

## v0.8.0

- **Egen side for hver bil.** Trykk på bilkortet på Hjem eller på en bil under Elbil. Du ser batteriet animert, rekkevidde, kilometerstand, lading nå og alle verdier bilen sender.
- **Kjørt og forbruk:** kilometer per dag eller måned og kWh per 100 km, regnet fra kilometerstanden og ladingen til bilen. Ladenivå over tid.
- **Lading for bilen** per dag eller måned, med tidligere år som egne søyler. Biler uten egne data (som Zeekr) får bare denne delen.
- **Posisjon** kan vises på bilsiden når du slår det på (standard av).
- **Refusjonsrapporten** kan vise kjørte km og kWh per 100 km for firmabilen («Vis kjørte km», standard av).
- Ladenivå og kilometerstand lagres hvert kvarter fra nå av, så historikken bygges opp fra denne versjonen.

## v0.7.1

- **Planlagt lading:** når bilen står i laderen og venter på ladeplanen, står det «Venter på planlagt lading 00:05–05:55» på Hjem og på siden for laderen.
- Siden for hver lader viser mer: ladeplan, om kabelen er låst, maks strøm, sikring, WiFi-nett og fastvare, og hva Easee-koden betyr når vi vet det.
- Varigheten for en økt viste et urimelig tall når Easee ikke hadde sendt starttiden.

## v0.7.0

- **Nye diagrammer overalt.** Søylene har fått et lett 3D-preg (skrå side, lys topp og glans), vokser fram når siden åpnes og glir når noe endres.
- **Tidligere år som egne søyler.** I stedet for streker står i fjor (og eldre år, så langt det finnes data) som egne søyler i hver sin dempede farge ved siden av årets. Boblen viser hvert år med endring i prosent.
- **Brytere i forklaringen.** Trykk på et år eller en del (kjøpt, egen sol, solgt, elbil …) for å skjule eller vise det. I år og i fjor vises som standard, og valget huskes.
- Gjelder Historikk (Forbruk og Sol), Økonomi, Norgespris eller spot, Elbil og siden for hver lader. Strømprisen har fått brytere for kjøp og salg.
- BMW: siste kjente status (ladenivå, rekkevidde, ladekabel) huskes over en omstart. Før sto ladekabelen som «Ikke tilkoblet» etter en oppdatering.

## v0.6.5

- Bilen på Hjem vises med navnet du har gitt den under Historikk › Elbil › Biler.
- Solcelleanlegget: den nattlige testen feiler ikke lenger når vekselretteren har slått seg av fordi det er mørkt. Om dagen sjekkes den som før.
- Kapasitetstrinn: snittet regnes bare av døgnene som har vært. Tidlig i måneden står det «Foreløpig» i stedet for et for lavt tall.

## v0.6.4

- **Laderne i 3D-huset på Hjem.** Hver Easee-lader har sin egen boks (på garasjeveggen, husveggen eller en stolpe, etter navnet på laderen). Når en lader lader, går kometer fra måleren til laderen, lysringen pulserer og kW vises.
- **Fjerde kort «Elbil»** ved Sol, Nett og Hjem viser hva laderne bruker nå. Trykk for å se bare laderne i huset.
- **«Hjem» er nå huset uten elbil**, med «+X kW til elbil» under når en lader er i gang.
- **Historikk › Forbruk delt i hus og elbil.** Søylene viser elbilen som egen del, og forbruket står som «Hus … · Elbil … kWh».

## v0.6.3

- Elbil og ladersiden virker også før noen bil er lagt til (de stoppet med en feil).
- BMW: «Test nå» åpner ikke en ekstra tilkobling når Strømleser alt er koblet til BMW-strømmen (BMW tillater bare én, og testen feilet).
- BMW vises som «Live» så snart strømmen er koblet til, også før bilen har sendt verdier.
- Økter uten valgt bil står som «Bil ikke valgt».

## v0.6.2

- **Egen side per lader.** Trykk på en lader på Hjem eller under Elbil. Du ser laderen animert mens den lader, strøm per fase, spenning, økta som pågår (kWh, varighet og kostnad hittil), siste time, kWh og kostnad for 30 dager eller 12 måneder, når på døgnet du lader, og hver økt time for time.
- **Biler.** Under Elbil legger du inn bilene (BMW kommer av seg selv) og velger hvilken bil som vanligvis står på hver lader. BMW-dataene retter det når bilen står på en annen lader, og du kan velge bil for hånd på hver økt. Elbil viser kWh og kostnad per bil.
- **Refusjonsrapporten** har valget «Fordel på bil». På: bare økter med firmabil tas med. Av: alle valgte ladere summeres, og rapporten sier at den ikke er fordelt på bil.
- «Andel» per lader er erstattet av bil per lader og økt.

## v0.6.1

- **BMW (CarData).** Legg til bilen under Innstillinger › Enheter med klient-ID fra MyBMW. Du godkjenner én gang hos BMW med en kode. Hjem viser ladenivå, rekkevidde, om bilen lader (effekt og tid til full) og kilometerstand, fortløpende fra BMW-strømmen.
- **Sanntid fra Easee.** Hjem viser hvilken lader som lader, med effekt og kWh i økta, oppdatert fortløpende.
- Nye ladere får inneværende måned først, og eldre data etterpå. Elbil viser «Henter fra Easee …» mens den henter.
- Andel-feltet for laderne står på én linje også på mobil.
- Har BMW-godkjenningen gått ut (Strømleser avslått i mer enn 14 dager), står det «Godkjenn på nytt» under Enheter.

## v0.6.0

- **Easee-lader.** Legg til Easee under Innstillinger › Enheter med brukernavn og passord fra Easee-appen. Strømleser henter kWh per time og ladeøktene én gang i timen, også bakover i tid (eldre data kommer i løpet av noen timer). Ladere andre har delt med deg er ikke med, men kan tas med.
- **Historikk › Elbil.** Hva ladingen kostet måned for måned: betalt pris time for time (strøm, nettleie og avgifter), også når solcellene dekket ladingen. Viser hvor mye ladingen løftet kapasitetstrinnet, ladet per dag, per lader og alle ladeøkter.
- **Refusjonsrapport for firmabil** under Historikk › Rapporter. Velg periode og ladere, og prisgrunnlag: fast sats + tillegg per måned (standard 1,70 kr/kWh og 445 kr/mnd, kan endres), bare fast sats, eller faktisk kostnad. Rapporten er en A4-side med signaturlinjer og øktliste som vedlegg. Lagre som PDF fra utskriftsvinduet, eller last ned øktlista som CSV.
- Andel per lader, hvis bare en del av ladingen gjelder firmabilen.
- Ansatt, arbeidsgiver, ladested og bil fylles inn én gang og huskes.

## v0.5.2

- Etter «Oppdater nå» vises «Oppdatert til …» (eller hva som gikk galt) med en gang, ikke først etter neste omstart.

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
