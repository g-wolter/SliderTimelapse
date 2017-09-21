#!/usr/bin/perl

# Part from the original Script of Vangelis Tasoulas taken to get the correct luminance
# Original Script can be found here: https://github.com/cyberang3l/timelapse-deflicker
# Copyright Vangelis Tasoulas (cyberang3l@gmail.com)
# Thanks to Vangelis for this brilliant work.
# At the moment, if reads the actual directory and determines the luminance of every
# in there. Some test pictures can be found below doc/pic.
# 
# Attention: At the moment, it only checks for files in actual folder and does nothing

use Getopt::Std;
use strict "vars";
use feature "say";
use Image::Magick;
use Image::ExifTool qw(:Public);
use Data::Dumper;
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
my %luminance;

# for floating luminance
my @lum = qw(0 0 0 0 0);

###############################################################################################################
# Directory File Handling
###############################################################################################################

# The working directory is the current directory.
my $data_dir = ".";
opendir( DATA_DIR, $data_dir ) || die "Cannot open $data_dir\n";

#Put list of files in the directory into an array:
my @files = readdir(DATA_DIR);

#Assume that the files are named in dictionary sequence - they will be processed as such.
@files = sort @files;

# Initialize count variable to number files in hash
my $count = 0;

#Initialize a variable to hold the previous image type detected - if this changes, warn user
my $prevfmt = "";

#Process the list of files, putting all image files into the luminance hash.
if ( scalar @files != 0 ) {
	foreach my $filename (@files) {
		my $ft   = File::Type->new();
		my $type = $ft->mime_type($filename);
		my ( $filetype, $fileformat ) = split( /\//, $type );
		#If it's an image file, add it to the luminance hash.
		if ( $filetype eq "image" ) {
			#Check whether we have a new image format - this is probably unwanted, so warn the user.
			if ( $prevfmt eq "" ) { $prevfmt = $fileformat } elsif ( $prevfmt ne "warned" && $prevfmt ne $fileformat ) {
				say "Images of type $prevfmt and $fileformat detected! ";
				#no more warnings about this from now on
				$prevfmt = "warned"
			}
			$luminance{$count}{filename} = $filename;
			$count++;
		}
	}
}

my $max_entries = scalar( keys %luminance );

if ( $max_entries < 1 ) { die "Cannot process less than one files.\n" }

say "$max_entries image files to be processed.";
say "Original luminance of Images is being calculated";

###############################################################################################################



###############################################################################################################
# Real Programm Part starts here
###############################################################################################################


# Check Image Settings
image_settings();

#Determine luminance of each file and add to the hash.
luminance_det();





###############################################################################################################
# Subroutinen ab hier
###############################################################################################################

sub slide{

}

sub take_picture{

}

sub read_reference{
	# subrouting to read the needed values from a reference picture
}

sub image_settings {
	# check every image for iso and shutter values
	
	for ( my $i = 0; $i < $max_entries; $i++ ) {	
		my $exifTool = new Image::ExifTool;
		my $info = $exifTool->ImageInfo($luminance{$i}{filename});
		my $ISO = $exifTool->GetValue('ISO');
		say "ISO: $ISO ";

		my $ShutterSpeed = $exifTool->GetValue('ShutterSpeed');
		say "ShutterSpeed: $ShutterSpeed \n";
	}
}

sub luminance_det {
	#Determine luminance of each image; add to hash.

	for ( my $i = 0; $i < $max_entries; $i++ ) {

		my $image = Image::Magick->new;

		#Evaluate the image using ImageMagick.
		$image->Read($luminance{$i}{filename});
		my @statistics = $image->Statistics();

		# Use the command "identify -verbose <some image file>" in order to see why $R, $G and $B
		# are read from the following index in the statistics array
		# This is the average R, G and B for the whole image.
		my $R          = @statistics[ ( RedPixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];
		my $G          = @statistics[ ( GreenPixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];
		my $B          = @statistics[ ( BluePixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];

		# We use the following formula to get the perceived luminance.
		# Set it as the original and target value to start out with.
		$luminance{$i}{value} = $luminance{$i}{original} = 0.299 * $R + 0.587 * $G + 0.114 * $B;

		say "Procecssing File: $luminance{$i}{filename} \n";
		say "Luminance of file $luminance{$i}{filename}: $luminance{$i}{value}";
		
		# Berechnung der floating luminance
		shift(@lum);
		push(@lum, $luminance{$i}{value});

		if(scalar(@lum) > 0){
			my $sum = 0;
			$sum += $_ for(@lum);
			my $avg = $sum / scalar(@lum);
			print "Floating Luminance: ";
			print $avg,"\n";
		}

	}
}
