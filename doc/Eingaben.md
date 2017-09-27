# Grundlegende Gedanken zur Eingabe

## Allgemein
Funktion | Option
---------|--------
Referenzfoto | -ref

## Slider
Funktion | Option | Werte
---------|--------|------
Slider nutzen | -s | yes / no
Vorlauf | -s-forward | yes / no
Rücklauf | -s-backward | yes / no
Mitte | -s-middle | yes / no
Geschwindigkeit | -s-speed | slow / fast

## Zeitraffer
Funktion | Option | Werte
---------|--------|------
Zeitraffer | -t | yes / no
Anzahl der Bilder | -t-count | 1....x

## Holy Grail
Funktion | Option | Werte | Erklärung
---------|--------|-------|----------
Holygrail | -hg | yes / no | Holy Grail Funktion nutzen?
Holygrail Method | -hg-method | IS / ISA | IS = ISO + Shutterspeed / ISA = ISO + Shutterspeed + Aperture
Holygrail Direction | -hg-direction | sunset / sunrise / stars / startrails | Sonnenuntergang, Sonnenaufgang etc.
Min ISO | -hg-miniso | 100 | Für sunrise direction
Max ISO | -hg-maxiso | 6400 | Für sunset und stars(trails) direction
Min Aperture | -hg-minaperture | 22 | Für sunrise direction
Max Aperture | -hg-maxaperture | 2,8 | Für sunset und stars(trails) direction
Min Shutterspeed | -hg-minshutter | 1/8000 | Für sunrise direction
Max Shutterspeed | -hg-maxshutter | 30 | Für sunset und stars(trails) direction
Schwellwerte | -hg-threshold | xxx% | Anpassung der internen Schwellwerte

## Camera
Funktion | Option | Werte
---------|--------|------
ISO | -c-iso | 100....6400
Blende | -c-aperture | 2,8....22
Shutterspeed | -c-shutter | 1/8000....30
Whitebalance | -c-whitebalance | awb/cloudy/...
