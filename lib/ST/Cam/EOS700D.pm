my $command = "gphoto2";
my $commandget = "--get-config";
my $commandset = "--set-config";

'/main/settings/datetime'
	# Label: Kamera Datum und Zeit
	# Type: DATE
	# Current: 1506886425
	# Printable: So 01 Okt 2017 21:33:45 CEST
	# Help: Use 'now' as the current time when setting.

'/main/settings/autopoweroff'
	# Label: Autom. Abschaltung
	# Type: TEXT
	# Current: 30

'/main/settings/capturetarget'
	# Label: Aufnahmeziel
	# Type: RADIO
	# Current: interner Speicher
	# Choice: 0 interner Speicher
	# Choice: 1 Speicherkarte

'/main/status/manufacturer'
	# Label: Kamera Hersteller
	# Type: TEXT
	# Current: Canon Inc.

'/main/status/cameramodel'
	# Label: Kameramodell
	# Type: TEXT
	# Current: Canon EOS 700D

'/main/status/batterylevel'
	# Label: Batterie Ladezustand
	# Type: TEXT
	# Current: 100%

'/main/status/lensname'
	# Label: Objektivbezeichnung
	# Type: TEXT
	# Current: EF-S18-55mm f/3.5-5.6 IS STM

'/main/status/shuttercounter'
	# Label: Auslöseanzahl
	# Type: TEXT
	# Current: 10298

'/main/status/availableshots'
	# Label: Verfügbarer Aufnahmen
	# Type: TEXT
	# Current: 13037

'/main/imgsettings/imageformat'
	# Label: Bild Format
	# Type: RADIO
	# Current: RAW
	# Choice: 0 Large Fine JPEG
	# Choice: 1 Large Normal JPEG
	# Choice: 2 Medium Fine JPEG
	# Choice: 3 Medium Normal JPEG
	# Choice: 4 Small Fine JPEG
	# Choice: 5 Small Normal JPEG
	# Choice: 6 Smaller JPEG
	# Choice: 7 Tiny JPEG
	# Choice: 8 RAW + Large Fine JPEG
	# Choice: 9 RAW

'/main/imgsettings/imageformatsd'
	# Label: Bild Format SD
	# Type: RADIO
	# Current: RAW
	# Choice: 0 Large Fine JPEG
	# Choice: 1 Large Normal JPEG
	# Choice: 2 Medium Fine JPEG
	# Choice: 3 Medium Normal JPEG
	# Choice: 4 Small Fine JPEG
	# Choice: 5 Small Normal JPEG
	# Choice: 6 Smaller JPEG
	# Choice: 7 Tiny JPEG
	# Choice: 8 RAW + Large Fine JPEG
	# Choice: 9 RAW

'/main/imgsettings/iso'
	# Label: ISO-Empfindlichkeit
	# Type: RADIO
	# Current: 800
	# Choice: 0 Auto
	# Choice: 1 100
	# Choice: 2 200
	# Choice: 3 400
	# Choice: 4 800
	# Choice: 5 1600
	# Choice: 6 3200
	# Choice: 7 6400
	# Choice: 8 12800

'/main/imgsettings/whitebalance'
	# Label: Weißabgleich
	# Type: RADIO
	# Current: Auto
	# Choice: 0 Auto
	# Choice: 1 Tageslicht
	# Choice: 2 Schatten
	# Choice: 3 Wolkig
	# Choice: 4 Kunstlicht - Glühlampe
	# Choice: 5 Kunstlicht - Fluoreszenzlampe
	# Choice: 6 Blitz
	# Choice: 7 Manuell

'/main/imgsettings/colortemperature'
	# Label: Farbtemperatur
	# Type: TEXT
	# Current: 5200

'/main/imgsettings/colorspace'
	# Label: Farbraum
	# Type: RADIO
	# Current: sRGB
	# Choice: 0 sRGB
	# Choice: 1 AdobeRGB

'/main/capturesettings/autoexposuremode'
	# Label: Canon Automatischer Belichtungsmodus
	# Type: RADIO
	# Current: Manuell
	# Choice: 0 P
	# Choice: 1 TV
	# Choice: 2 AV
	# Choice: 3 Manuell
	# Choice: 4 Langzeitbelichtung
	# Choice: 5 A_DEP
	# Choice: 6 DEP
	# Choice: 7 Benutzerdefiniert
	# Choice: 8 Lock
	# Choice: 9 Grün
	# Choice: 10 Nachtportrait
	# Choice: 11 Sport
	# Choice: 12 Portrait
	# Choice: 13 Landschaft
	# Choice: 14 Nahaufnahme
	# Choice: 15 Blitz aus

'/main/capturesettings/drivemode'
	# Label: Auslöse Modus
	# Type: RADIO
	# Current: Kontinuierlich
	# Choice: 0 Einzelbild
	# Choice: 1 Kontinuierlich
	# Choice: 2 Selbstauslöser 10 Sekunden
	# Choice: 3 Selbstauslöser 2 Sekunden
	# Choice: 4 Unbekannter Wert 0007

'/main/capturesettings/picturestyle'
	# Label: Bild Style
	# Type: RADIO
	# Current: Auto
	# Choice: 0 Auto
	# Choice: 1 Standard
	# Choice: 2 Portrait
	# Choice: 3 Landschaft
	# Choice: 4 Neutral
	# Choice: 5 Treu
	# Choice: 6 Einfarbig
	# Choice: 7 Benutzerdefiniert 1
	# Choice: 8 Benutzerdefiniert 2
	# Choice: 9 Benutzerdefiniet 3

'/main/capturesettings/aperture'
	# Label: Blende
	# Type: RADIO
	# Current: 5.6
	# Choice: 0 3.5
	# Choice: 1 4
	# Choice: 2 4.5
	# Choice: 3 5
	# Choice: 4 5.6
	# Choice: 5 6.3
	# Choice: 6 7.1
	# Choice: 7 8
	# Choice: 8 9
	# Choice: 9 10
	# Choice: 10 11
	# Choice: 11 13
	# Choice: 12 14
	# Choice: 13 16
	# Choice: 14 18
	# Choice: 15 20
	# Choice: 16 22

'/main/capturesettings/shutterspeed'
	# Label: Belichtungszeit
	# Type: RADIO
	# Current: 1/100
	# Choice: 0 Langzeitbelichtung
	# Choice: 1 30
	# Choice: 2 25
	# Choice: 3 20
	# Choice: 4 15
	# Choice: 5 13
	# Choice: 6 10
	# Choice: 7 8
	# Choice: 8 6
	# Choice: 9 5
	# Choice: 10 4
	# Choice: 11 3.2
	# Choice: 12 2.5
	# Choice: 13 2
	# Choice: 14 1.6
	# Choice: 15 1.3
	# Choice: 16 1
	# Choice: 17 0.8
	# Choice: 18 0.6
	# Choice: 19 0.5
	# Choice: 20 0.4
	# Choice: 21 0.3
	# Choice: 22 1/4
	# Choice: 23 1/5
	# Choice: 24 1/6
	# Choice: 25 1/8
	# Choice: 26 1/10
	# Choice: 27 1/13
	# Choice: 28 1/15
	# Choice: 29 1/20
	# Choice: 30 1/25
	# Choice: 31 1/30
	# Choice: 32 1/40
	# Choice: 33 1/50
	# Choice: 34 1/60
	# Choice: 35 1/80
	# Choice: 36 1/100
	# Choice: 37 1/125
	# Choice: 38 1/160
	# Choice: 39 1/200
	# Choice: 40 1/250
	# Choice: 41 1/320
	# Choice: 42 1/400
	# Choice: 43 1/500
	# Choice: 44 1/640
	# Choice: 45 1/800
	# Choice: 46 1/1000
	# Choice: 47 1/1250
	# Choice: 48 1/1600
	# Choice: 49 1/2000
	# Choice: 50 1/2500
	# Choice: 51 1/3200
	# Choice: 52 1/4000

'/main/capturesettings/meteringmode'
	# Label: Spotmessung
	# Type: RADIO
	# Current: Mittelpunkt/Gewichtete Messung
	# Choice: 0 Berechnend
	# Choice: 1 Partiell
	# Choice: 2 Punkt
	# Choice: 3 Mittelpunkt/Gewichtete Messung


