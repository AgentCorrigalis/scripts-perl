#!/usr/bin/perl

@names = qw( tom dick harry sally monica );
open INFILE, "<", $ARGV[0];
foreach (<INFILE>) {
	print "$names[$_]\n";
}
close INFILE;
