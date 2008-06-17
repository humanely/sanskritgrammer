use strict;
use Carp;
use Lingua::SA qw(sandhi vibhakti);

# USAGE: perl $0 raama puM
# or
# USAGE: perl $0 raama 1
# etc.

my ($noun,$linga) = @ARGV;
unless(defined $noun and defined $linga){
	croak "Please provide noun and linga as args";
	}

print "\nTable of all vibhakti/vachana combination for given noun/linga\n";
print "Using provided noun $noun, linga $linga\n\n";

for my $i (1..8){
    for my $j (1..3){
        printf "%-20s\t",
        sandhi(vibhakti({naam=>$noun,linga=>$linga,vibhakti=>$i,vachana=>$j}));
        }
     print "\n";
     }
print "\n";
