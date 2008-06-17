use strict;
use Carp;
use Lingua::SA qw(vibhakti);

print "\nprints table of pratyay for given noun and linga\n";
print "-kaar of linga is included in pratyay (internal sandhi)\n";
print "\n";

my $noun="raama";	# a-kaarant
my $linga = 1;		# alias for "puM";

print "Using noun $noun, linga $linga\n";
print "\n";

for my $i (1..8){	# prathamA through sambodhana
    for my $j (1..3){	# eka-, dvi-, bahuvachana
        my $pratyay =
			vibhakti({naam=>$noun,linga=>$linga,vibhakti=>$i,vachana=>$j});
		$pratyay =~ s/^.*\+ //;		# remove the noun part
        printf "%-10s\t",$pratyay;
        }
     print "\n";
     }
print "\n";
