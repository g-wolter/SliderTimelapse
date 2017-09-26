#!/usr/bin/env perl
# Logging kann massiv I/O's erzeugen, daher nur nutzen, wenn nicht direkt auf
# den Raspberry PI (SD Karte) geschrieben wird. Ich werde im Setup noch einen
# USB Stick etc. verwenden, wo auch die Test Fotos drauf landen für die
# Luminanzbestimmung
# Logformat: [UniqueID] [Timestamp] [ISO: Wert] [SHU: Wert] [LUM: Wert]....
# UniqueID stellt hierbei die Sequenz des Timelapse dar, also den Namen,
# den der User auswählen muss und ist für die komplette Sequenz vorhanden.

use strict;
use warnings;
use feature 'say';
package ST::Log;
use Data::Dumper;
use Getopt::Std;

sub new {
  return;
}

sub log {
  my $self = shift;
  my $logentry = $_[0];

  open(DATEI,">>/opt/SliderTimelapse/log/sl_log");  # oeffne Datei zum Anhaengen
  print DATEI "$logentry\n";  # in die Datei schreiben
  close(DATEI);
  return ("ok");
}

1;
