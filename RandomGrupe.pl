#©Andolo 2023-2024 All rights reserved

#!/usr/bin/perl
korMangeGruper();

sub korMangeGruper
{
    print "Hvor mange gruper skal du lage?\n";
    our $GetGrupenomer = <STDIN>;
    ChekGrupenomer();
}

sub ChekGrupenomer
{
    if ($GetGrupenomer =~  /^-?\d+$/)
    {
        our $Grupenomer = int($GetGrupenomer);
    }
    else
    {
        print "skriv kor mange gruper du vil ha med et tall\n";

        korMangeGruper();
    }
}

inputFolkIGrupe();

sub inputFolkIGrupe
{

my $text = "Skriv in alle som skal vere i gruper\n";

print "$text";

my $Grupe = <STDIN>;

our @GrupeNavn = split / /, $Grupe;

our $KormangeiGrupeNavn = scalar @GrupeNavn;

chekOmGrupeErLiten();
}

sub chekOmGrupeErLiten
{
    if($KormangeiGrupeNavn >= $Grupenomer)
    {

    } 
    else
    {
        print "Du har for lite navn til og generere en så stor grupe\n";
        inputFolkIGrupe();
    }
}

print "$KormangeiGrupeNavn  $Grupenomer ";

$GrupeStorelse = $KormangeiGrupeNavn / $Grupenomer;
print "$GrupeStorelse \n";

our $GrupeIndex = 0;

for(my $i = 1;$i <= $Grupenomer;$i++)
{

    print "Grupe$i\n";
    for (my $i;$i < $GrupeStorelse;$i++)
    {

        $SplitGrupe = @GrupeNavn[$GrupeIndex]; 
        print "$SplitGrupe\n";
        $GrupeIndex++;
    }
}