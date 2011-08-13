#!/usr/bin/perl
print "gimme a name --> ";
chomp($someone = <STDIN>);

%nameBank = (
  'agent' => 'corrigalis',
  'bob' => 'mcboberty',
);

if(exists $nameBank{$someone}) {
        print "You mean $someone $nameBank{$someone} !!\n";
} else {
        print "I don't know a $someone\n";
}
