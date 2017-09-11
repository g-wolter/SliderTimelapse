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
### hostapd.conf vorbereiten
Erst mittels ifconfig das WLAN Interface rausfinden, dass Ihr verwenden wollt. Ich habe 2 im Einsatz, einen am Heimnetz, einen für die Verbindung mit dem Tablet/Phone.

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

vi /etc/default/hostapd
```bash
# Defaults for hostapd initscript
#
# See /usr/share/doc/hostapd/README.Debian for information about alternative
# methods of managing hostapd.
#
# Uncomment and set DAEMON_CONF to the absolute path of a hostapd configuration
# file and hostapd will be started during system boot. An example configuration
# file can be found at /usr/share/doc/hostapd/examples/hostapd.conf.gz
#
#DAEMON_CONF=""
DAEMON_CONF="/etc/hostapd/hostapd.conf"

# Additional daemon options to be appended to hostapd command:-
#       -d   show more debug messages (-dd for even more)
#       -K   include key data in debug messages
#       -t   include timestamps in some debug messages
#
# Note that -B (daemon mode) and -P (pidfile) options are automatically
# configured by the init.d script and must not be added to DAEMON_OPTS.
#
#DAEMON_OPTS=""
```

vi /etc/network/interfaces
```bash
# interfaces(5) file used by ifup(8) and ifdown(8)

# Please note that this file is written to be used with dhcpcd
# For static IP, consult /etc/dhcpcd.conf and 'man dhcpcd.conf'

# Include files from /etc/network/interfaces.d:
source-directory /etc/network/interfaces.d

allow-hotplug wlx74da38024e1a
iface wlx74da38024e1a inet static
    address 10.11.12.1
    netmask 255.255.255.0
```

apt-get install isc-dhcp-server

vi /etc/default/isc-dhcp-server
```bash
# Defaults for isc-dhcp-server (sourced by /etc/init.d/isc-dhcp-server)

# Path to dhcpd's config file (default: /etc/dhcp/dhcpd.conf).
DHCPDv4_CONF=/etc/dhcp3/dhcpd.conf
#DHCPDv6_CONF=/etc/dhcp/dhcpd6.conf

# Path to dhcpd's PID file (default: /var/run/dhcpd.pid).
DHCPDv4_PID=/var/run/dhcpd.pid
#DHCPDv6_PID=/var/run/dhcpd6.pid

# Additional options to start dhcpd with.
#       Don't use options -cf or -pf here; use DHCPD_CONF/ DHCPD_PID instead
#OPTIONS=""

# On what interfaces should the DHCP server (dhcpd) serve DHCP requests?
#       Separate multiple interfaces with spaces, e.g. "eth0 eth1".
INTERFACESv4="wlx74da38024e1a"
#INTERFACESv6=""
```
ifconfig wlan0 10.11.12.1 netmask 255.255.255.0
/etc/init.d/isc-dhcp-server restart

