#!/usr/bin/perl

open INFILE, "<", $ARGV[0];
chomp(@names = <INFILE>);
@names = sort @names;
$delimiter = ',';
if ($ARGV[1] eq 'n') {
	$delimiter = "\n";
}
foreach (@names) {
	print "$_$delimiter";
}        
