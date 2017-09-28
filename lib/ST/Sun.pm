#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
package ST::Sun;
use Astro::Sunrise;

sub new {
  return;
}

sub Suncalc {
  my $self  = shift;
	my $year  = $_[0];
	my $month = $_[1];
	my $day   = $_[2];
  my $lon   = $_[3];
  my $lat   = $_[4];
  my $tz    = $_[5];
  my $dst   = $_[6];

  my ($sunrise, $sunset) = sunrise(
      { year => $year, month => $month, day => $day, 
        lon  => $lon, lat => $lat,
        tz   => $tz, dst => $dst }
  );

  return ($sunrise, $sunset);
}

sub test {
  print "Hallo aus der Routine Sun";
  return;
}

1;
