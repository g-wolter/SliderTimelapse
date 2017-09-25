#!/usr/bin/perl

use Getopt::Std;
use strict "vars";
use feature "say";
use Image::Magick;
use File::Type;

###############################################################################################################
# Handle ImageMagick Specials
###############################################################################################################

# Read the version of the imagemagick library that is currently used.
my ( $_im_version ) = Image::Magick->new->Get('version') =~ /\s+(\d+\.\d+\.\d+-\d+)\s+/;
my $im_version = version->parse($_im_version =~ s/-/./r);

my $imStatsChangedVer = version->parse("6.9.0.0");

my $im_version = version->parse($_im_version =~ s/-/./r);
my $statFieldsPerColChannel = $im_version >= $imStatsChangedVer ? 8 : 7;

###############################################################################################################


###############################################################################################################
# Constants for Image Magick Luminance Statistics
###############################################################################################################

# Pixel Channel Constants as defined in PixelChannel enum in MagicCore/pixel.h
use constant {
	RedPixelChannel => 0,
    GreenPixelChannel => 1,
    BluePixelChannel => 2,
};

# PerlMagick statistics offset constants as defined in PerlMagick/Magick.xs
# (search for #define ChannelStatistics in the file Magick.xs)
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

###############################################################################################################

# Create hash to hold luminance values.
my $luminance;

my $file = '/opt/SlildeTimelapse/pic/Sonnenuntergang.jpg';

#Determine luminance of each file and add to the hash.
luminance_det();



###############################################################################################################
# Subroutinen ab hier
###############################################################################################################


sub luminance_det {
	my $image = Image::Magick->new;
	$image->Read($file);
	my @statistics = $image->Statistics();

	my $R = @statistics[ ( RedPixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];
	my $G = @statistics[ ( GreenPixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];
	my $B = @statistics[ ( BluePixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];

	$luminance = 0.299 * $R + 0.587 * $G + 0.114 * $B;

	say "Procecssing File: $file \n";
	say "Luminance of file: $luminance";

}
