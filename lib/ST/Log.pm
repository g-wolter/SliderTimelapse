#!/usr/bin/env perl
# Logging kann massiv I/O's erzeugen, daher nur nutzen, wenn nicht direkt auf
# den Raspberry PI (SD Karte) geschrieben wird. Ich werde im Setup noch einen
# USB Stick etc. verwenden, wo auch die Test Fotos drauf landen für die
# Luminanzbestimmung

use strict;
use warnings;
use feature 'say';
package ST::Log;
use Data::Dumper;
use Getopt::Std;

sub new {
  return;
}

1;
