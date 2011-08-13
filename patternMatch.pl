#!/usr/bin/perl

print "--- items found containing \'fred\':\n";
    &lookForPattern('fred');
print "--- items found containing \'[f|F]red\':\n";
    &lookForPattern('[f|F]red');
print "--- items found containing \'.\':\n";
    &lookForPattern('[.]');
print "--- items found containing a single capital:\n";
    &lookForPattern('[A-Z][a-z]+');
print "--- items found containing two matching characters together, not whitepace:\n";
    &lookForPattern('(\S)\1');

sub lookForPattern {
    $pattern = $_[0];
    open INFILE, "<", $ARGV[0];
        foreach (<INFILE>) {
            if (/$pattern/) {
              print "$_";
            }
        }
    close INFILE;
}

