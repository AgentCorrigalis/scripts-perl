#!/usr/bin/perl
while (<>) {                   # take one input line at a time
    chomp;
    if (/(?<word>\b\w*a\b)(?<followOn>\w{5})?/) {
        print "Matched: |$`<$&>$'|\n";  # the special match vars
        print "matched '$+{word}' as well as '$+{followOn}'\n";  # the special match vars
    } else {
        print "No match: |$_|\n";
    }
}
