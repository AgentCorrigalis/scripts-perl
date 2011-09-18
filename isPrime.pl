#!/usr/bin/perl
print "Prime\n" if (1 x $ARGV[0]) !~ /^1?$|^(11+?)\1+$/;
