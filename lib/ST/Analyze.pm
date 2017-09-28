#!/usr/bin/env perl
# Analyze every taken picture and store the lens, shutter and iso information
# for later usage.

use strict;
use warnings;
use feature 'say';
package ST::Analyze;
use Data::Dumper;
use Getopt::Std;
use Image::ExifTool qw(:Public);

sub new {
  return;
}

sub GetImageInfo {
  my $self = shift;
  my $filename = $_[0];
  my $exifTool = new Image::ExifTool;
  my $info = $exifTool->ImageInfo($filename);
  my $ISO = $exifTool->GetValue('ISO');
  my $Aperture = $exifTool->GetValue('Aperture');
  my $ShutterSpeed = $exifTool->GetValue('ShutterSpeed');
  return ($ISO, $ShutterSpeed, $Aperture);
}

sub test {
  print "Hallo aus der Routine Analyze";
  return;
}

1;
