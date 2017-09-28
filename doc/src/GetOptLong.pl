#!/usr/bin/perl
use Getopt::Long;

GetOptions(
  'debug' => \my $debug,
) or die "fehlerhaftes Argument: $0\n";

print "starte im Debugmodus\n" if $debug;
