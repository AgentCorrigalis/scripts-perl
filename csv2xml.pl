#!/usr/bin/perl

$rowCount = 1;
print "<$ARGV[1]>\n";
&printContent;
print "</$ARGV[1]>\n";

sub printEntry {
    while(@headers) {
        chomp($record = shift(@headers));
        chomp($value = shift(@values));
        print "\t<$record>$value</$record>\n";
    }
}

sub printContent {
    open INFILE, "<", $ARGV[0] or die $!;
    foreach(<INFILE>) {
        if ($rowCount == 1) {
            @headers = split(/,/);
        } else {
            @values = split(/,/);
            &printEntry;
        }
        $rowCount += 1;
    }
    close INFILE;
}
