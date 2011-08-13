#!/usr/bin/perl
my @numbers = 1..1000;
my $sum = &sum(@numbers);

print "The sum of the numbers @numbers is $sum\n";

sub sum {
        my $runningTotal = 0;
        foreach(@_) {
                $runningTotal += $_;
        }
        $runningTotal;
}
