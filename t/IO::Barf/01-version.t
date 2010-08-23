# Modules.
use IO::Barf;
use Test::More 'tests' => 1;

# Debug message.
print "Testing: version.\n";

# Test.
is($IO::Barf::VERSION, '0.01');
