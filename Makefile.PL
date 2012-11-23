# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Barfing content to output file.';
author 'Michal Špaček <skim@cpan.org>';
license 'bsd';
name 'IO-Barf';
requires 'Error::Pure' => 0.08;
requires 'Exporter' => 0;
requires 'Readonly' => 0;
requires 'Scalar::Util' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=IO-Barf';
resources 'homepage' => 'https://github.com/tupinek/IO-Barf';
resources 'repository' => 'git://github.com/tupinek/IO-Barf';
test_requires 'Digest' => 0;
test_requires 'English' => 0;
test_requires 'Error::Pure' => 0.08;
test_requires 'File::Object' => 0.05;
test_requires 'File::Slurp' => 0;
test_requires 'File::Temp' => 0;
test_requires 'IO::File' => 0;
test_requires 'Test::More' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.04';

# Run.
WriteAll();
