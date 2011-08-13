#!/usr/bin/perl

print 'Text to repeat: ';
$text = <STDIN>;
print 'Repeat count: ';
$count = <STDIN>;
print "\n";
$output = $text x $count . "\n";
print $output;
