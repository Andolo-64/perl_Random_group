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
#Randomise Grupe
for(my $i = $KormangeiGrupeNavn - 1; $i > 0; $i--)
{
    my $RandomNomber = int(rand($i + 1));
    @GrupeNavn[$i, $RandomNomber] = @GrupeNavn[$RandomNomber, $i];
}

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

$GrupeStorelse = $KormangeiGrupeNavn / $Grupenomer;

print"\n";

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
    print"\n";
}