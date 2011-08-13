#!/usr/bin/perl

open INFILE, "<", $ARGV[0];
chomp(@strings = reverse <INFILE>);

foreach (@strings) {
	print "$_\n";
}
close INFILE;
