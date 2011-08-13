#!/usr/bin/perl

use 5.010;

&greet("Fred");
&greet("Birt");
&greet("Mac");
&greet("Dilbert");

sub greet {
    state @population;
    my $name = shift;
    if(! defined @population) {
        print "Hi $name, you are the first one here!\n";
    } else {
        print "Hi $name, these guys are here as well: @population!\n";
    }
    push(@population, $name);
}
