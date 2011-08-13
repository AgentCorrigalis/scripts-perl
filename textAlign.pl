#!/usr/bin/perl

for(0..2) {
        for(0..9) {print};
}
print "\n";
for(@ARGV) {
        printf "%20s\n", $_;
}
