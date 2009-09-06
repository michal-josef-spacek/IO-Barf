# Modules.
use IO::Barf;
use Test::More 'tests' => 1;

print "Testing: version.\n";
is($IO::Barf::VERSION, '0.01');
