use strict;
use Carp;
use Lingua::SA qw(sandhi vibhakti);

print "\nTable of all vibhakti/vachana combination for given noun/linga\n\n";

my $noun="raama";	# a-kaarant
my $linga = 1;		# alias for "puM";

print "Using noun $noun, linga $linga\n\n";

for my $i (1..8){	# prathamA through sambodhana
    for my $j (1..3){	# eka-, dvi-, bahuvachana
        printf "%-20s\t",
        sandhi(vibhakti({naam=>$noun,linga=>$linga,vibhakti=>$i,vachana=>$j}));
        }
     print "\n";
     }
print "\n";
