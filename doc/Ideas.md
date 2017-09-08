# Ideensammlung und Notizen

Folgende Dinge sollen mit den Scripten abgedeckt werden:
* Steuerung des Sliders
* Steuerung der Camera
* Belichtungsmessung und Aufnahme Anpassung für bessere Timelapse Source Bilder (Holy Grail Technologie?)

Das Ganze soll nach einmaligem Setup autark laufen und so weit wie möglich vom Stromnetz unabhängig.
Die Steuerung soll im ersten Step über die CLI erfolgen, ein Webinterface könnte ggf. nachträglich zugefügt
werden.

## 120cm Slider und Schrittmotor
Der Schrittmotor braucht für meinen 120cm Slider genau 12970 Schritte. In der schnellsten Steuerungseinstellung
benötigt er dafür 3,8 Minuten. In dem Script [slider.py](https://github.com/tbrumm/SliderTimelapse/blob/master/Code%20Schnipsel/slider.py) sind folgende Einstellungen anzupassen:

### Geschwindigkeit

Der schnellst mögliche Wert scheint 0.005 sec zu sein. Je größer der Wert, desto langsamer der Slider.

```python
# Zeit fuer Pause zwischen den Vorgaengen
time = 0.005
```

### Drehrichtung

Mit dieser FOR Schleife werden die einzelnen Spulen des Schrittmotors angesprochen. Ein rückwärtiges aufrufen des Scriptes, erzwingt dann auch eine Rückwärtsbewegung.

#### Vorwärts

```python
# Volle Umdrehung sind 512 Schritte  
for i in range (12970):    
    Step1()
    Step2()
    Step3()
    Step4()
    Step5()
    Step6()
    Step7()
    Step8()  
    print i
```
#### Rückwärts

```python
# Volle Umdrehung sind 512 Schritte 
for i in range (12970):    
    Step8() 
    Step7()
    Step6()
    Step5()
    Step4()
    Step3()
    Step2()
    Step1()
    print i
```
