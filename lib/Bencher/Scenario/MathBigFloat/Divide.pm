package Bencher::Scenario::MathBigFloat::Divide;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark dividing 2^32 32 times to get 1',
    participants => [
        {
            module => 'Math::BigFloat',
            code_template => 'my $n = Math::BigFloat->new("4294967296"); my $m = Math::BigFloat->new("2"); for (1..32) { $n->bdiv($m) } $n->bstr',
        },
        {
            name => 'native',
            code_template => 'my $n = 4294967296; for (1..32) { $n /= 2 } $n',
        },
    ],
};

1;
# ABSTRACT:
