package Bencher::Scenario::MathBigFloat::Subtract;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark subtracting 0.5 from 50, 100 times',
    participants => [
        {
            module => 'Math::BigFloat',
            code_template => 'my $n = Math::BigFloat->new("50"); my $m = Math::BigFloat->new("0.5"); for (1..100) { $n->bsub($m) } $n->bstr',
        },
        {
            name => 'native',
            code_template => 'my $n = 50; for (1..100) { $n -= 0.5 } $n',
        },
    ],
};

1;
# ABSTRACT:
