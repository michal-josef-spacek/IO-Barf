# Pragmas.
use strict;
use warnings;

# Modules.
use Test::More 'tests' => 2;

BEGIN {

	# Test.
	use_ok('IO::Barf');
}

# Test.
require_ok('IO::Barf');
