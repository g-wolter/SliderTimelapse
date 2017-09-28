#!/usr/bin/env perl


use strict;
use warnings;
use feature 'say';
use Image::ExifTool;
my $exifTool = new Image::ExifTool;
my $info = $exifTool->ImageInfo('IMG_4000.JPG');

foreach (keys %$info) {
    print "$_ => $$info{$_}\n";
}
