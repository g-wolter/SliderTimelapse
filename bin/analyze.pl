#!/usr/bin/perl

use Getopt::Std;
use strict "vars";
use feature "say";
use Image::ExifTool qw(:Public);
use File::Type;


my $data_dir = ".";
opendir( DATA_DIR, $data_dir ) || die "Cannot open $data_dir\n";

#Put list of files in the directory into an array:
my @files = readdir(DATA_DIR);

##Assume that the files are named in dictionary sequence - they will be processed as such.
@files = sort @files;


foreach my $filename (@files) {
	my $ft   = File::Type->new();
	my $type = $ft->mime_type($filename);
	my ( $filetype, $fileformat ) = split( /\//, $type );
	#If it's an image file, add it to the luminance hash.
	if ( $filetype eq "image" ) {

		my $exifTool = new Image::ExifTool;
		my $info = $exifTool->ImageInfo($filename);

		print "Procecssing File: $filename \n";	
		my $ExposureTime = $exifTool->GetValue('ExposureTime');
		print "ExposureTime: $ExposureTime \n";

		my $FileSize = $exifTool->GetValue('FileSize');
		print "FileSize: $FileSize \n";
	
		my $ISO = $exifTool->GetValue('ISO');
		print "ISO: $ISO \n";
	
		my $Make = $exifTool->GetValue('Make');
		print "Make: $Make \n";

		my $Megapixels = $exifTool->GetValue('Megapixels');
		print "Megapixels: $Megapixels \n";

		my $ShutterSpeed = $exifTool->GetValue('ShutterSpeed');
		print "ShutterSpeed: $ShutterSpeed \n";

		my $ShutterSpeedValue = $exifTool->GetValue('ShutterSpeedValue');
		print "ShutterSpeedValue: $ShutterSpeedValue \n";
		print "========================================\n";
	}	

}
