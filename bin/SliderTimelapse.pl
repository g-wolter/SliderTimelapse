#!/usr/bin/env perl

use lib '/opt/SliderTimelapse/lib';

use strict;
use warnings;
use feature 'say';

use ST::Control;
use ST::Calc;
use ST::Luminanz;
use ST::Float;
use ST::Slide;
use ST::Analyze;
use ST::Log;
use POSIX qw/ strftime /;

my $date = strftime("%Y%m%d%H%M%S", localtime);
my $file = "/opt/SliderTimelapse/pic/Sonnenuntergang.jpg";
my $session = strftime("%Y-%m-%d", localtime); #Wird später durch den Sequenznamen ersetzt

my $run = "\[$session\]-\[$date\] ===========================================";
my $log = ST::Log->log($run);

my $lum = ST::Luminanz->GetLuminanceInfo($file);
print "Luminanz: $lum\n";

my ($iso, $shutter) = ST::Analyze->GetImageInfo($file);
print "Hauptprogramm - ISO: $iso \n";
print "Hauptprogramm - SHU: $shutter \n";

my $logentry = "\[$session\] \[$date\] \[ISO: $iso\] \[SHU: $shutter\] \[LUM: $lum\]";
$log = ST::Log->log($logentry);
