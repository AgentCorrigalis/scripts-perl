#!/usr/bin/perl

my @numbers = 1..100;
foreach(&aboveAverage(@numbers)) {print "$_\n"};

sub aboveAverage {
   my $average = &average(@_);
   my @aboveAverage = ();
   foreach(@_) {
           if($_ > $average) {
                   push(@aboveAverage, $_);
           }
   }
   @aboveAverage;
}

sub average {
        my $sum = &sum(@_);
        my $average = $sum / ($#_ + 1);
}

sub sum {
        my $runningTotal = 0;
        foreach(@_) {
                $runningTotal += $_;
        }
        $runningTotal;
}
