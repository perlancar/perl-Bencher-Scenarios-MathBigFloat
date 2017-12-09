package Bencher::Scenario::MathBigFloat::Multiply;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark multiplying 2 32 times (2^32)',
    participants => [
        {
            module => 'Math::BigFloat',
            code_template => 'my $n = Math::BigFloat->new("1"); my $m = Math::BigFloat->new("2"); for (1..32) { $n->bmul($m) } $n->bstr',
        },
        {
            name => 'native',
            code_template => 'my $n = 1; for (1..32) { $n *= 2 } $n',
        },
    ],
};

1;
# ABSTRACT:
