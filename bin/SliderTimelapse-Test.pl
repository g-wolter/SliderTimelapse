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
my $session = strftime("%Y-%m-%d", localtime); #Wird später durch den Sequenznamen ersetzt
my $run = "\[$session\]-\[$date\] ===========================================";
my $log = ST::Log->log($run);

my $data_dir = "/opt/SliderTimelapse/pic/";
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

    my ($iso, $shutter) = ST::Analyze->GetImageInfo($file);
    print "Hauptprogramm - ISO: $iso \n";
    print "Hauptprogramm - SHU: $shutter \n";

    my $logentry = "\[$session\] \[$date\] \[ISO: $iso\] \[SHU: $shutter\] \[LUM: $lum\]";
    $log = ST::Log->log($logentry);

	}

}
