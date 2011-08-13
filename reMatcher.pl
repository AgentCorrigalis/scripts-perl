#!/usr/bin/perl
while (<>) {                   # take one input line at a time
    chomp;
    if (/(fred|barney){3}/) {
        print "Matched: |$`<$&>$'|\n";  # the special match vars
    } else {
        print "No match: |$_|\n";
    }
}