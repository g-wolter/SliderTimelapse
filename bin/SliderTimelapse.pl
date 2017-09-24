#!/usr/bin/env perl

BEGIN{ push @INC,'/opt/SliderTimelapse/lib';}

use strict;
use warnings;
use feature 'say';
use slider::control;
use slider::calc;
use slider::luminanz;
use slider::float;
use slider::slide;
use Data::Dumper;
use File::Path 'make_path';
