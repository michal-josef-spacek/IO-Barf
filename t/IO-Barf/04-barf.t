# Pragmas.
use strict;
use warnings;

# Modules.
use Digest;
use File::Object;
use File::Temp qw(tempfile);
use IO::Scalar;
use IO::Barf qw(barf);
use File::Slurp qw(slurp);
use Test::More 'tests' => 3;

# Test data directory.
my $test_dir = File::Object->new->up->dir('data');

# Test subroutine.
sub test1 {
	my $file = shift;
	my $digest = Digest->new('SHA-256');
	my $ex1 = $test_dir->file($file)->s;
	my $data = slurp($ex1);
	$digest->add($data);
	my $data_sha256 = $digest->hexdigest;
	my (undef, $new_ex1) = tempfile();
	barf($new_ex1, $data);
	open my $fh_new_ex1, '<', $new_ex1;
	$digest->addfile($fh_new_ex1);
	my $barf_sha256 = $digest->hexdigest;
	is($data_sha256, $barf_sha256);
	unlink $new_ex1;
	return;
}

# Test.
test1('ex1.txt');

# Test.
test1('ex2.txt');

# Test.
test1('ex3.txt');
