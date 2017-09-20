#!/usr/bin/env perl

BEGIN{ push @INC,'./lib/';}
use strict;
use warnings;
use feature 'say';
use gphoto2::control;
use Data::Dumper;
use File::Path 'make_path';