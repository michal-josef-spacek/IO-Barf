# Pragmas.
use strict;
use warnings;

# Modules.
use IO::Barf;
use Test::More 'tests' => 1;

# Test.
is($IO::Barf::VERSION, 0.05, 'Version.');
