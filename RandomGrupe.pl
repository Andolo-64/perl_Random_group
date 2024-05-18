#©Andolo 2023

#!/usr/bin/perl

my $text = "Skriv in alle som skal vere i gruper\n";

print "$text";

our $Grupe = <STDIN>;

our @GrupeNavn = split / /, $Grupe;


print "ny Grupe\n";

foreach my $SplitGrupe (@GrupeNavn) {

    print "$SplitGrupe\n";
}