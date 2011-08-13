#!/usr/bin/perl

print %ENV;

for (($key, $value) = each %ENV) {
        print "$key = $value\n";
}
