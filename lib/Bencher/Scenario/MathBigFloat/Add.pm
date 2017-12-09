package Bencher::Scenario::MathBigFloat::Add;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark adding 0.5 100 times',
    participants => [
        {
            module => 'Math::BigFloat',
            code_template => 'my $n = Math::BigFloat->new("0"); my $m = Math::BigFloat->new("0.5"); for (1..100) { $n->badd($m) } $n->bstr',
        },
        {
            name => 'native',
            code_template => 'my $n = 0; for (1..100) { $n += 0.5 } $n',
        },
    ],
};

1;
# ABSTRACT:
