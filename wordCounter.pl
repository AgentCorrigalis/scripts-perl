#!/usr/bin/perl

open INFILE, "<", $ARGV[0];

for (<INFILE>) {
        chomp($word = $_);
        $wordCounts{$word} += 1;
}

foreach $key (sort keys %wordCounts) {
        print "$key occured $wordCounts{$key} times.\n";
}

close INFILE;
