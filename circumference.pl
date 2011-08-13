#!/usr/bin/perl

print "Circumference Calculator\n";
print "========================\n\n";
print 'Radius: ';
$radius = <STDIN>;
if ($radius eq "" || $radius < 0) {
	$radius = 0;
}
$pi = 3.141_592_654;
$circumference = 2 * $pi * $radius;
print "Circumference is $circumference\n";
