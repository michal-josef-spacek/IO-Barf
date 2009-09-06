# Modules.
use Test::More 'tests' => 2;

BEGIN {
	print "Usage tests.\n";
	use_ok('IO::Barf');
}
require_ok('IO::Barf');
