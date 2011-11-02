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
requires 'Error::Pure' => 0.01;
requires 'Exporter' => 0;
requires 'Readonly' => 0;
resources 'repository' => {
	'url' => 'git://github.com/tupinek/IO-Barf',
	'web' => 'https://github.com/tupinek/IO-Barf',
	'type' => 'git',
};
test_requires 'Digest' => 0;
test_requires 'English' => 0;
test_requires 'File::Object' => 0.01;
test_requires 'File::Slurp' => 0;
test_requires 'File::Temp' => 0;
test_requires 'Test::More' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
