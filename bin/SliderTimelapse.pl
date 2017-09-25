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

my $calc = new ST::Calc();

my $lum = new ST::Luminanz();

my $float = new ST::Float();

my $slide = new ST::Slide();

my $ana = new ST::Analyze();
