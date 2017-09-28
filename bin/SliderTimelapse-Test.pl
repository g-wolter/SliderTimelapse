#!/usr/bin/env perl

use lib '/opt/SliderTimelapse/lib';

use strict;
use warnings;
use feature 'say';

use ST::Control;
use ST::Calc;
use ST::Luminanz;
use ST::Float;
use ST::Slide;
use ST::Analyze;
use ST::Log;
use POSIX qw/ strftime /;

# Für den Test der Sequenznamen und der Floating Luminanz
use File::Type;

my $date = strftime("%Y%m%d%H%M%S", localtime);
my $session = "Sonnenuntergang";
#strftime("%Y-%m-%d", localtime); #Wird später durch den Sequenznamen ersetzt
my @lum;

my $run = "\[$session\] \[$date\] ===========================================";
my $log = ST::Log->log($run);

my $data_dir = ".";
opendir( DATA_DIR, $data_dir ) || die "Cannot open $data_dir\n";
my @files = readdir(DATA_DIR);
@files = sort @files;

foreach my $file (@files) {
	my $ft   = File::Type->new();
	my $type = $ft->mime_type($file);
	my ( $filetype, $fileformat ) = split( /\//, $type );
	#If it's an image file, add it to the luminance hash.
	if ( $filetype eq "image" ) {

    my $lum = ST::Luminanz->GetLuminanceInfo($file);
    print "Luminanz: $lum\n";

		my ($iso, $shutter, $aperture) = ST::Analyze->GetImageInfo($file);
    print "File: $file\n";
    print "ISO: $iso \n";
    print "APE: $aperture \n";
    print "SHU: $shutter \n";


    if ( scalar @lum < 5 ) {
	    push(@lum, $lum);
    } else {
	    shift(@lum);
	    push(@lum, $lum);
    }

    my $float = ST::Float->GetFloatingLuminance(\@lum);

    my $logentry = "\[$session\] \[$date\] \[File: $file\] \[ISO: $iso\] \[APE: $aperture\] \[SHU: $shutter\] \[LUM: $lum\] \[FLOAT: $float\]";
    $log = ST::Log->log($logentry);

	}

}
