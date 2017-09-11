# Installation

## Raspberry PI Installation

```bash
apt-get update
apt-get upgrade
apt-get install avahi-daemon gphoto2 imagemagick git python-dev python-pip
pip install pyephem
```

## Vorbereitung des Raspberry PI als Access Point
Anleitung von Jan Karres: [Raspberry Pi: WLAN-Access-Point einrichten](https://jankarres.de/2015/06/raspberry-pi-wlan-access-point-einrichten/)

```bash
apt-get install hostapd
wget https://jankarres.de/wp-content/uploads/2015/06/hostapd_8188CUS.zip
unzip hostapd_8188CUS.zip
mv /usr/sbin/hostapd /usr/sbin/hostapd_original
mv hostapd /usr/sbin/hostapd
chmod +x /usr/sbin/hostapd
```

```bash
vi /etc/hostapd/hostapd.conf
```

```bash
interface=wlx74da38024e1a
ssid=camcontrol
hw_mode=g
channel=6
macaddr_acl=0
ignore_broadcast_ssid=0
auth_algs=1
wpa=2
wpa_passphrase=00000000
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP
rsn_pairwise=CCMP
```
