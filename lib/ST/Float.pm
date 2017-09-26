#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
package ST::Float;
use Data::Dumper;

sub new {
  return;
}

sub GetFloatingLuminance {
  my $self = shift;

  my ($Referenz_auf_ARRAY) = @_;
  my @lum = @{$Referenz_auf_ARRAY};

  if(scalar(@lum) > 0){
    my $sum = 0;
    $sum += $_ for(@lum);
    my $avg = $sum / scalar(@lum);
    print "Floating Luminance: ";
    print $avg,"\n";
  }

}

sub test {
  print "Hallo aus der Routine Float";
  return;
}

1;
