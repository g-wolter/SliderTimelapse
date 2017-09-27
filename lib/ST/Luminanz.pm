#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
package ST::Luminanz;
use Data::Dumper;
use Image::Magick;

my ( $_im_version ) = Image::Magick->new->Get('version') =~ /\s+(\d+\.\d+\.\d+-\d+)\s+/;
my $im_version = version->parse($_im_version =~ s/-/./r);

my $imStatsChangedVer = version->parse("6.9.0.0");

$im_version = version->parse($_im_version =~ s/-/./r);
my $statFieldsPerColChannel = $im_version >= $imStatsChangedVer ? 8 : 7;

use constant {
  RedPixelChannel => 0,
  GreenPixelChannel => 1,
  BluePixelChannel => 2,
};

use constant {
  statoffset_depth => 0,
  statoffset_minima => 1,
  statoffset_maxima => 2,
  statoffset_mean => 3,
  statoffset_sd => 4,
  statoffset_kurtosis => 5,
  statoffset_skewness => 6,
  statoffset_entropy => 7,
};

sub new {
  return;
}

sub GetLuminanceInfo {
  my $self = shift;
	my $file = $_[0];
  my $luminance;
	my $image = Image::Magick->new;
	$image->Read($file);
	my @statistics = $image->Statistics();

	my $R = @statistics[ ( RedPixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];
	my $G = @statistics[ ( GreenPixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];
	my $B = @statistics[ ( BluePixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];

	$luminance = 0.299 * $R + 0.587 * $G + 0.114 * $B;
  return ($luminance);
}


sub test {
  print "Hallo aus der Routine Luminanz";
  return;
}

1;
