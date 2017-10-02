my $command = "gphoto2";
my $commandget = "--get-config";
my $commandset = "--set-config";


'/main/settings/datetime'
	# Label: Kamera Datum und Zeit
	# Type: DATE
	# Current: 1506931421
	# Printable: Mo 02 Okt 2017 10:03:41 CEST
	# Help: Use 'now' as the current time when setting.

'/main/settings/recordingmedia'
	# Label: Aufnahmemedium
	# Type: RADIO
	# Current: Speicherkarte
	# Choice: 0 Speicherkarte
	# Choice: 1 Kamera SDRAM
	# Choice: 2 Unbekannter Wert 0002

'/main/settings/capturetarget'
	# Label: Aufnahmeziel
	# Type: RADIO
	# Current: interner Speicher
	# Choice: 0 interner Speicher
	# Choice: 1 Speicherkarte

'/main/status/manufacturer'
	# Label: Kamera Hersteller
	# Type: TEXT
	# Current: Nikon Corporation

'/main/status/cameramodel'
	# Label: Kameramodell
	# Type: TEXT
	# Current: D7000

'/main/status/acpower'
	# Label: Netzanschluss
	# Type: RADIO
	# Current: Aus
	# Choice: 0 An
	# Choice: 1 Aus

'/main/status/batterylevel'
	# Label: Batterie Ladezustand
	# Type: TEXT
	# Current: 100%

'/main/imgsettings/imagesize'
	# Label: Bildgröße
	# Type: RADIO
	# Current: 4928x3264
	# Choice: 0 4928x3264
	# Choice: 1 3696x2448
	# Choice: 2 2464x1632

'/main/imgsettings/iso'
	# Label: ISO-Empfindlichkeit
	# Type: RADIO
	# Current: 2500
	# Choice: 0 100
	# Choice: 1 125
	# Choice: 2 160
	# Choice: 3 200
	# Choice: 4 250
	# Choice: 5 320
	# Choice: 6 400
	# Choice: 7 500
	# Choice: 8 640
	# Choice: 9 800
	# Choice: 10 1000
	# Choice: 11 1250
	# Choice: 12 1600
	# Choice: 13 2000
	# Choice: 14 2500
	# Choice: 15 3200
	# Choice: 16 4000
	# Choice: 17 5000
	# Choice: 18 6400
	# Choice: 19 8000
	# Choice: 20 10000
	# Choice: 21 12800
	# Choice: 22 25600

'/main/imgsettings/whitebalance'
	# Label: Weißabgleich
	# Type: RADIO
	# Current: Automatisch
	# Choice: 0 Automatisch
	# Choice: 1 Tageslicht
	# Choice: 2 Kunstlicht - Fluoreszenzlampe
	# Choice: 3 Kunstlicht - Glühlampe
	# Choice: 4 Blitz
	# Choice: 5 Wolkig
	# Choice: 6 Schatten
	# Choice: 7 Farbtemperatur
	# Choice: 8 Voreinstellung

'/main/imgsettings/colorspace'
	# Label: Farbraum
	# Type: RADIO
	# Current: sRGB
	# Choice: 0 sRGB
	# Choice: 1 AdobeRGB

'/main/capturesettings/dlighting'
	# Label: Aktives D-Lighting
	# Type: RADIO
	# Current: Aus
	# Choice: 0 Extra hoch
	# Choice: 1 Hoch
	# Choice: 2 Normal
	# Choice: 3 Niedrig
	# Choice: 4 Aus
	# Choice: 5 Auto

'/main/capturesettings/highisonr'
	# Label: Rauschunterdrückung bei hohen ISO
	# Type: RADIO
	# Current: Aus
	# Choice: 0 Aus
	# Choice: 1 Niedrig
	# Choice: 2 Normal
	# Choice: 3 Hoch

'/main/capturesettings/rawcompression'
	# Label: RAW.Komprimierung
	# Type: RADIO
	# Current: Verlustlos
	# Choice: 0 Verlustlos
	# Choice: 1 Verlustbehaftet

'/main/capturesettings/longexpnr'
	# Label: Rauschunterdrückung bei Langzeit Aufnahme
	# Type: RADIO
	# Current: Aus
	# Choice: 0 An
	# Choice: 1 Aus

'/main/capturesettings/imagequality'
	# Label: Bildqualität
	# Type: RADIO
	# Current: NEF (Raw)
	# Choice: 0 JPEG Basic
	# Choice: 1 JPEG Normal
	# Choice: 2 JPEG Fein
	# Choice: 3 NEF (Raw)
	# Choice: 4 NEF+Basic
	# Choice: 5 NEF+Normal
	# Choice: 6 NEF+Fein

'/main/capturesettings/expprogram'
	# Label: Belichtungs Programm
	# Type: RADIO
	# Current: M
	# Choice: 0 M
	# Choice: 1 P
	# Choice: 2 A
	# Choice: 3 S
	# Choice: 4 Auto
	# Choice: 5 Nachtlandschaft
	# Choice: 6 Automatischer (Kein Blitz)
	# Choice: 7 Unbekannter Wert 8050
	# Choice: 8 Unbekannter Wert 8051

'/main/capturesettings/capturemode'
	# Label: Bildaufnahme Modus
	# Type: RADIO
	# Current: Einzelbild
	# Choice: 0 Einzelbild
	# Choice: 1 Mehrbild
	# Choice: 2 Kontinuierlicher Langsame Geschwindigkeit
	# Choice: 3 Selbstauslöser
	# Choice: 4 Spiegel hochklappen
	# Choice: 5 Leises Auslösen
	# Choice: 6 Unbekannter Wert 8017

'/main/capturesettings/exposuremetermode'
	# Label: Belichtungsmessmodus
	# Type: RADIO
	# Current: Mehrpunkt
	# Choice: 0 Mittelpunkt/Gewichtet
	# Choice: 1 Mehrpunkt
	# Choice: 2 Zentral Punkt

'/main/capturesettings/shutterspeed2'
	# Label: Belichtungszeit 2
	# Type: RADIO
	# Current: 20
	# Choice: 0 1/8000
	# Choice: 1 1/6400
	# Choice: 2 1/5000
	# Choice: 3 1/4000
	# Choice: 4 1/3200
	# Choice: 5 1/2500
	# Choice: 6 1/2000
	# Choice: 7 1/1600
	# Choice: 8 1/1250
	# Choice: 9 1/1000
	# Choice: 10 1/800
	# Choice: 11 1/640
	# Choice: 12 1/500
	# Choice: 13 1/400
	# Choice: 14 1/320
	# Choice: 15 1/250
	# Choice: 16 1/200
	# Choice: 17 1/160
	# Choice: 18 1/125
	# Choice: 19 1/100
	# Choice: 20 1/80
	# Choice: 21 1/60
	# Choice: 22 1/50
	# Choice: 23 1/40
	# Choice: 24 1/30
	# Choice: 25 1/25
	# Choice: 26 1/20
	# Choice: 27 1/15
	# Choice: 28 1/13
	# Choice: 29 1/10
	# Choice: 30 1/8
	# Choice: 31 1/6
	# Choice: 32 1/5
	# Choice: 33 1/4
	# Choice: 34 1/3
	# Choice: 35 10/25
	# Choice: 36 1/2
	# Choice: 37 10/16
	# Choice: 38 10/13
	# Choice: 39 1
	# Choice: 40 13/10
	# Choice: 41 16/10
	# Choice: 42 2
	# Choice: 43 25/10
	# Choice: 44 3
	# Choice: 45 4
	# Choice: 46 5
	# Choice: 47 6
	# Choice: 48 8
	# Choice: 49 10
	# Choice: 50 13
	# Choice: 51 15
	# Choice: 52 20
	# Choice: 53 25
	# Choice: 54 30
	# Choice: 55 x 200
	# Choice: 56 Langzeitbelichtung

'/main/capturesettings/f-number'
	# Label: F-Nummer
	# Type: RADIO
	# Current: f/3,5
	# Choice: 0 f/3,5
	# Choice: 1 f/4
	# Choice: 2 f/4,5
	# Choice: 3 f/5
	# Choice: 4 f/5,6
	# Choice: 5 f/6,3
	# Choice: 6 f/7,1
	# Choice: 7 f/8
	# Choice: 8 f/9
	# Choice: 9 f/10
	# Choice: 10 f/11
	# Choice: 11 f/13
	# Choice: 12 f/14
	# Choice: 13 f/16
	# Choice: 14 f/18
	# Choice: 15 f/20
	# Choice: 16 f/22