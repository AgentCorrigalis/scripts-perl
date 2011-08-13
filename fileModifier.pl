#!/usr/bin/perl
# read file containing 'fred' strings
# replace all instances of 'fred' with 'larry'
# write to another file

open INFILE, "<", $ARGV[0];
$ARGV[0] =~ /(\w+)/;
open OUTFILE, ">", "$1.out";

$text = join '', <INFILE>;
$text =~ s/fred/larry/g;

print OUTFILE $text;

close INFILE;
close OUTFILE;
