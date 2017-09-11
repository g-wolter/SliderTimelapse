# gPhoto2

gphoto2 --auto-detect

```
root@camcontrol:~# gphoto2 -a

Fähigkeiten für Kamera           : Nikon DSC D7000 (PTP mode)
Unterstützung für seriellen Port : Nein
USB-Unterstützung                : Ja
Aufnahme machen (Auswahl)        :
                                 : Bild
                                 : Bildvorschau
                                 : Trigger Capture
Konfigurationsunterstützung      : Ja
Unterstützung für das Löschen einzelner Bilder: Ja
Unterstützung für das Löschen aller Bilder   : Nein
Unterstützung für Bildvorschau   : Ja
Unterstützung für Bildhochladen  : Ja
```

```
root@camcontrol:~# gphoto2 -a
Fähigkeiten für Kamera           : Canon EOS 550D
Unterstützung für seriellen Port : Nein
USB-Unterstützung                : Ja
Aufnahme machen (Auswahl)        :
                                 : Bild
                                 : Bildvorschau
                                 : Trigger Capture
Konfigurationsunterstützung      : Ja
Unterstützung für das Löschen einzelner Bilder: Ja
Unterstützung für das Löschen aller Bilder   : Nein
Unterstützung für Bildvorschau   : Ja
Unterstützung für Bildhochladen  : Ja
```

```
--capture-image
Capture an image and	keep it	on the camera.

--capture-image-and-download
Capture an image and	download it immediately	to the computer.

--capture-tethered
Lets	gphoto2	wait for notifications from the	camera that an object
was added. This is useful for tethered capture, where pressing the
shutter on the camera immediately transfer the image	to the machine
for processing

--list-config
List	all configuration entries.

--get-config CONFIGENTRY
Get the specified configuration entry.

This	command	will list the type, the	current	value and also the
available options of	this configuration value.

--set-config CONFIGENTRY=CONFIGVALUE
Set the specified configuration entry. For lists of choices of
values this setting first looks up CONFIGVALUE as value and then as
index into the choice list. Since this is not fully clear, you can
use --set-config-index or --set-config-value	to be more clear what
is searched for.

Look	at the output of --get-config to see what values are possible
to set here.

--set-config-index CONFIGENTRY=CONFIGINDEX
Set the specified configuration entry by specifying the index into
the list of choices for the configuration value. This of course
only	works for configuration	settings that offer list of choices.

Look	at the output of --get-config to see what indices are possible
to set here.

--set-config-value CONFIGENTRY=CONFIGVALUE
Set the specified configuration entry by specifying its new value.
For lists of	choices	the value is looked up and set.

Look	at the output of --get-config to see what indices are possible
to set here.
```

## Settings die sowohl Nikon als auch Canon unterstützen
```
/main/actions/autofocusdrive
/main/actions/manualfocusdrive
/main/actions/opcode
/main/actions/viewfinder
/main/capturesettings/exposurecompensation
/main/capturesettings/focusmode
/main/capturesettings/shutterspeed
/main/imgsettings/colorspace
/main/imgsettings/iso
/main/imgsettings/whitebalance
/main/other/5001
/main/other/d303
/main/other/d406
/main/other/d407
/main/settings/artist
/main/settings/capturetarget
/main/settings/copyright
/main/settings/datetime
/main/status/batterylevel
/main/status/cameramodel
/main/status/deviceversion
/main/status/manufacturer
/main/status/serialnumber
/main/status/vendorextension
```

### Nikon

```
OPTION: /main/actions/autofocusdrive
Label: Fahre NIKON DSLR Autofokus
Type: TOGGLE
Current: 0

OPTION: /main/actions/manualfocusdrive
Label: Fahre NIKON DSLR manuellen Fokus
Type: RANGE
Current: 0
Bottom: -32767
Top: 32767
Step: 1

OPTION: /main/actions/opcode
Label: PTP Opcode
Type: TEXT
Current: 0x1001,0xparam1,0xparam2

OPTION: /main/actions/viewfinder
Label: Nikon Viewfinder
Type: TOGGLE
Current: 0

OPTION: /main/capturesettings/focusmode
Label: Fokusmodus
Type: RADIO
Current: AF-C
Choice: 0 Manuell
Choice: 1 AF-S
Choice: 2 AF-C
Choice: 3 AF-A
Choice: 4 Unbekannter Wert 8013

OPTION: /main/capturesettings/shutterspeed
Label: Belichtungszeit
Type: RADIO
Current: 0,0062s
Choice: 0 0,0001s
Choice: 1 0,0002s
Choice: 2 0,0003s
Choice: 3 0,0004s
Choice: 4 0,0005s
Choice: 5 0,0006s
Choice: 6 0,0008s
Choice: 7 0,0010s
Choice: 8 0,0012s
Choice: 9 0,0015s
Choice: 10 0,0020s
Choice: 11 0,0025s
Choice: 12 0,0031s
Choice: 13 0,0040s
Choice: 14 0,0050s
Choice: 15 0,0062s
Choice: 16 0,0080s
Choice: 17 0,0100s
Choice: 18 0,0125s
Choice: 19 0,0166s
Choice: 20 0,0200s
Choice: 21 0,0250s
Choice: 22 0,0333s
Choice: 23 0,0400s
Choice: 24 0,0500s
Choice: 25 0,0666s
Choice: 26 0,0769s
Choice: 27 0,1000s
Choice: 28 0,1250s
Choice: 29 0,1666s
Choice: 30 0,2000s
Choice: 31 0,2500s
Choice: 32 0,3333s
Choice: 33 0,4000s
Choice: 34 0,5000s
Choice: 35 0,6250s
Choice: 36 0,7692s
Choice: 37 1,0000s
Choice: 38 1,3000s
Choice: 39 1,6000s
Choice: 40 2,0000s
Choice: 41 2,5000s
Choice: 42 3,0000s
Choice: 43 4,0000s
Choice: 44 5,0000s
Choice: 45 6,0000s
Choice: 46 8,0000s
Choice: 47 10,0000s
Choice: 48 13,0000s
Choice: 49 15,0000s
Choice: 50 20,0000s
Choice: 51 25,0000s
Choice: 52 30,0000s
Choice: 53 Langzeitbelichtung

OPTION: /main/imgsettings/colorspace
Label: Farbraum
Type: RADIO
Current: sRGB
Choice: 0 sRGB
Choice: 1 AdobeRGB

OPTION: /main/imgsettings/iso
Label: ISO-Empfindlichkeit
Type: RADIO
Current: 200
Choice: 0 100
Choice: 1 125
Choice: 2 160
Choice: 3 200
Choice: 4 250
Choice: 5 320
Choice: 6 400
Choice: 7 500
Choice: 8 640
Choice: 9 800
Choice: 10 1000
Choice: 11 1250
Choice: 12 1600
Choice: 13 2000
Choice: 14 2500
Choice: 15 3200
Choice: 16 4000
Choice: 17 5000
Choice: 18 6400
Choice: 19 8000
Choice: 20 10000
Choice: 21 12800
Choice: 22 25600

OPTION: /main/imgsettings/whitebalance
Label: Weißabgleich
Type: RADIO
Current: Automatisch
Choice: 0 Automatisch
Choice: 1 Tageslicht
Choice: 2 Kunstlicht - Fluoreszenzlampe
Choice: 3 Kunstlicht - Glühlampe
Choice: 4 Blitz
Choice: 5 Wolkig
Choice: 6 Schatten
Choice: 7 Farbtemperatur
Choice: 8 Voreinstellung

OPTION: /main/other/5001
Label: Batterie Ladezustand
Type: MENU
Current: 40
Choice: 0 0
Choice: 1 1
Choice: 2 2
Choice: 3 3
Choice: 4 4
Choice: 5 5
Choice: 6 6
Choice: 7 7
Choice: 8 8
Choice: 9 9
Choice: 10 10
Choice: 11 11
Choice: 12 12
Choice: 13 13
Choice: 14 14
Choice: 15 15
Choice: 16 16
Choice: 17 17
Choice: 18 18
Choice: 19 19
Choice: 20 20
Choice: 21 21
Choice: 22 22
Choice: 23 23
Choice: 24 24
Choice: 25 25
Choice: 26 26
Choice: 27 27
Choice: 28 28
Choice: 29 29
Choice: 30 30
Choice: 31 31
Choice: 32 32
Choice: 33 33
Choice: 34 34
Choice: 35 35
Choice: 36 36
Choice: 37 37
Choice: 38 38
Choice: 39 39
Choice: 40 40
Choice: 41 41
Choice: 42 42
Choice: 43 43
Choice: 44 44
Choice: 45 45
Choice: 46 46
Choice: 47 47
Choice: 48 48
Choice: 49 49
Choice: 50 50
Choice: 51 51
Choice: 52 52
Choice: 53 53
Choice: 54 54
Choice: 55 55
Choice: 56 56
Choice: 57 57
Choice: 58 58
Choice: 59 59
Choice: 60 60
Choice: 61 61
Choice: 62 62
Choice: 63 63
Choice: 64 64
Choice: 65 65
Choice: 66 66
Choice: 67 67
Choice: 68 68
Choice: 69 69
Choice: 70 70
Choice: 71 71
Choice: 72 72
Choice: 73 73
Choice: 74 74
Choice: 75 75
Choice: 76 76
Choice: 77 77
Choice: 78 78
Choice: 79 79
Choice: 80 80
Choice: 81 81
Choice: 82 82
Choice: 83 83
Choice: 84 84
Choice: 85 85
Choice: 86 86
Choice: 87 87
Choice: 88 88
Choice: 89 89
Choice: 90 90
Choice: 91 91
Choice: 92 92
Choice: 93 93
Choice: 94 94
Choice: 95 95
Choice: 96 96
Choice: 97 97
Choice: 98 98
Choice: 99 99
Choice: 100 100

OPTION: /main/other/d303
Label: PTP Property 0xd303
Type: TEXT
Current: 1

OPTION: /main/other/d406
Label: PTP Property 0xd406
Type: TEXT
Current: Windows/6.0.5330.0 MTPClassDriver/6.0.5330.0

OPTION: /main/other/d407
Label: PTP Property 0xd407
Type: TEXT
Current: 1

OPTION: /main/settings/artist
Label: Künstler
Type: TEXT
Current: PicturePunxx

OPTION: /main/settings/capturetarget
Label: Aufnahmeziel
Type: RADIO
Current: interner Speicher
Choice: 0 interner Speicher
Choice: 1 Speicherkarte

OPTION: /main/settings/copyright
Label: Copyright
Type: TEXT
Current: PicturePunxx

OPTION: /main/settings/datetime
Label: Kamera Datum und Zeit
Type: DATE
Current: 1505153703
Printable: Mo 11 Sep 2017 20:15:03 CEST
Help: Use 'now' as the current time when setting.

OPTION: /main/status/batterylevel
Label: Batterie Ladezustand
Type: TEXT
Current: 40%

OPTION: /main/status/cameramodel
Label: Kameramodell
Type: TEXT
Current: D7000

OPTION: /main/status/deviceversion
Label: Version des Gerätes
Type: TEXT
Current: V1.04

OPTION: /main/status/manufacturer
Label: Kamera Hersteller
Type: TEXT
Current: Nikon Corporation

OPTION: /main/status/serialnumber
Label: Seriennummer
Type: TEXT
Current: 6309099

OPTION: /main/status/vendorextension
Label: Hersteller Erweiterung
Type: TEXT
Current: microsoft.com: 1.0

```

### Canon

```
OPTION: /main/actions/autofocusdrive
Label: Fahre Canon DSLR Autofokus
Type: TOGGLE
Current: 0

OPTION: /main/actions/manualfocusdrive
Label: Fahre Canon DSLR manuellen Fokus
Type: RADIO
Current: Keine
Choice: 0 Nah 1
Choice: 1 Nah 2
Choice: 2 Nah 3
Choice: 3 Keine
Choice: 4 Weit 1
Choice: 5 Weit 2
Choice: 6 Weit 3

OPTION: /main/actions/opcode
Label: PTP Opcode
Type: TEXT
Current: 0x1001,0xparam1,0xparam2

OPTION: /main/actions/viewfinder
Label: Canon EOS Viewfinder
Type: TOGGLE
Current: 2

OPTION: /main/capturesettings/focusmode
Label: Fokusmodus
Type: RADIO
Current: Einzel AF
Choice: 0 Einzel AF
Choice: 1 AI Fokus
Choice: 2 AI Servo

OPTION: /main/capturesettings/shutterspeed
Label: Belichtungszeit
Type: RADIO
Current: 30
Choice: 0 Langzeitbelichtung
Choice: 1 30
Choice: 2 25
Choice: 3 20
Choice: 4 15
Choice: 5 13
Choice: 6 10
Choice: 7 8
Choice: 8 6
Choice: 9 5
Choice: 10 4
Choice: 11 3.2
Choice: 12 2.5
Choice: 13 2
Choice: 14 1.6
Choice: 15 1.3
Choice: 16 1
Choice: 17 0.8
Choice: 18 0.6
Choice: 19 0.5
Choice: 20 0.4
Choice: 21 0.3
Choice: 22 1/4
Choice: 23 1/5
Choice: 24 1/6
Choice: 25 1/8
Choice: 26 1/10
Choice: 27 1/13
Choice: 28 1/15
Choice: 29 1/20
Choice: 30 1/25
Choice: 31 1/30
Choice: 32 1/40
Choice: 33 1/50
Choice: 34 1/60
Choice: 35 1/80
Choice: 36 1/100
Choice: 37 1/125
Choice: 38 1/160
Choice: 39 1/200
Choice: 40 1/250
Choice: 41 1/320
Choice: 42 1/400
Choice: 43 1/500
Choice: 44 1/640
Choice: 45 1/800
Choice: 46 1/1000
Choice: 47 1/1250
Choice: 48 1/1600
Choice: 49 1/2000
Choice: 50 1/2500
Choice: 51 1/3200
Choice: 52 1/4000

OPTION: /main/imgsettings/colorspace
Label: Farbraum
Type: RADIO
Current: sRGB
Choice: 0 sRGB
Choice: 1 AdobeRGB

OPTION: /main/imgsettings/iso
Label: ISO-Empfindlichkeit
Type: RADIO
Current: 100
Choice: 0 Auto
Choice: 1 100
Choice: 2 200
Choice: 3 400
Choice: 4 800
Choice: 5 1600
Choice: 6 3200
Choice: 7 6400

OPTION: /main/imgsettings/whitebalance
Label: Weißabgleich
Type: RADIO
Current: Unbekannter Wert 0009
Choice: 0 Auto
Choice: 1 Tageslicht
Choice: 2 Schatten
Choice: 3 Wolkig
Choice: 4 Kunstlicht - Glühlampe
Choice: 5 Kunstlicht - Fluoreszenzlampe
Choice: 6 Blitz
Choice: 7 Manuell
Choice: 8 Unbekannter Wert 0009

OPTION: /main/other/5001
Label: Batterie Ladezustand
Type: MENU
Current: 100
Choice: 0 100
Choice: 1 0
Choice: 2 75
Choice: 3 0
Choice: 4 50

OPTION: /main/other/d303
Label: PTP Property 0xd303
Type: TEXT
Current: 1

OPTION: /main/other/d406
Label: PTP Property 0xd406
Type: TEXT
Current: Unknown Initiator

OPTION: /main/other/d407
Label: PTP Property 0xd407
Type: TEXT
Current: 1

OPTION: /main/settings/artist
Label: Künstler
Type: TEXT
Current: PicturePunxx.de

OPTION: /main/settings/capturetarget
Label: Aufnahmeziel
Type: RADIO
Current: interner Speicher
Choice: 0 interner Speicher
Choice: 1 Speicherkarte

OPTION: /main/settings/copyright
Label: Copyright
Type: TEXT
Current: www.picturepunxx.de

OPTION: /main/settings/datetime
Label: Kamera Datum und Zeit
Type: DATE
Current: 946681218
Printable: Sa 01 Jan 2000 00:00:18 CET
Help: Use 'now' as the current time when setting.

OPTION: /main/status/batterylevel
Label: Batterie Ladezustand
Type: TEXT
Current: 100%

OPTION: /main/status/cameramodel
Label: Kameramodell
Type: TEXT
Current: Canon EOS 550D

OPTION: /main/status/deviceversion
Label: Version des Gerätes
Type: TEXT
Current: 3-1.0.9

OPTION: /main/status/manufacturer
Label: Kamera Hersteller
Type: TEXT
Current: Canon Inc.

OPTION: /main/status/serialnumber
Label: Seriennummer
Type: TEXT
Current: 6ef8f8a3ed3f445e93b237e0cdc72bf9

OPTION: /main/status/vendorextension
Label: Hersteller Erweiterung
Type: TEXT
Current: Keine
```
