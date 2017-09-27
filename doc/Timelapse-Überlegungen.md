# Gedanken zur Timelapse Steuerung
Das sind erstmal nur ein paar Gedanken und Ideen / Erfahrungen aus den letzten Jahren. Noch nichts was in Code gegossen wird. Ideen und Anregungen sind willkommen.

## Sunrise
* Aus der Nacht kommende Lange Belichtungen
* Hohe ISO Werte am Anfang
* ISO Step by Step verringern
* Belichtungszeiten Step by Step verringen
* Luminanz/Shutter/ISO des letzten Bildes ggf speichern für Daytime

## Daytime
* Am Ende der Sunrise mit den Luminanzwerten beginnen (aber mit kürzeren Verschlusszeiten, geringeren ISO etc.)
* relativ gleich bleibende Belichtungen
* kurze Verschlußzeiten
* kleine ISO Werte
* bei Gegenlicht abblenden (ISA Mode?)
* ggf flackern durch ziehende Wolken (kürzere Floating Average Werte)
* Aufnahme Intervall nicht zu kurz/lang wählen 4-8 Sekunden
* Luminanz/Shutter/ISO des letzten Bildes ggf speichern für Sunset

## Sunset
* Verschlusszeiten erhöhen (1/xxx -> 30sec)
* Dann ISO erhöhen bis max ISO
* Luminanz/Shutter/ISO des letzten Bildes ggf speichern für Nighttime

## Nighttime (Stars)

* Belichtungen bei offener Blende (max)
* Hohe ISO Werte (Schwarzbild? oder max ISO was noch erträglich ist)
  * Schwarzbild bedeutet dann Verdopplung der Belichtungszeit und Halbierung der Anzahl der Frames
* Luminanz/Shutter/ISO des letzten Bildes ggf speichern für Sunrise

* Lange Belichtungszeiten (500er Rule oder [NPF Rule](https://petapixel.com/2017/04/07/npf-rule-formula-sharp-star-photos-every-time/))

![My Cams with NPF](pic/NPF.png)
