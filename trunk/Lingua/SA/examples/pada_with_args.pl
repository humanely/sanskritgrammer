use strict;
use Carp;
use Lingua::SA qw(sandhi vibhakti);

#USAGE: perl $0 raama puM prathamA ekavachana
# or
#USAGE: perl $0 raama puM 1 ekavachana
# etc.

my ($noun,$linga,$vibhakti,$vachana) = @ARGV;
unless(defined $noun and defined $linga and defined $vibhakti and defined $vachana){
        croak "Please provide noun, linga, vibhakti, vachana as args";
        }

print "\nprints desired pada for given noun, linga, vibhakti, vachana\n";
print "\n";

print "Using provided noun $noun, linga $linga, vibhakti $vibhakti, vachana $vachana\n";
print "\n";

my $pada =
sandhi(vibhakti({naam=>$noun,linga=>$linga,vibhakti=>$vibhakti,vachana=>$vachana}));
print "$pada\n\n";
