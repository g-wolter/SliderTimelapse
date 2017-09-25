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

use Data::Dumper;

my $lum = ST::Luminanz->GetLuminanceInfo('/opt/SliderTimelapse/pic/Sonnenuntergang.jpg');
print "Luminanz: $lum\n";

my ($iso, $shutter) = ST::Analyze->GetImageInfo('/opt/SliderTimelapse/pic/Sonnenuntergang.jpg');
print "ISO: $iso \n";
print "SHU: $shutter \n";
