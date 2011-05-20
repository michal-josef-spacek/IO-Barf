# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'AUTHOR' => 'Michal Špaček <skim@cpan.org>',
	'BUILD_REQUIRES' => {
		'Digest' => 0,
		'English' => 0,
		'File::Object' => 0,
		'File::Spec' => 0,
		'File::Temp' => 0,
		'Perl6::Slurp' => 0,
		'Test::More' => 0,
		'Test::Pod' => 0,
		'Test::Pod::Coverage' => 0,
	},
	'CONFIGURE_REQUIRES' => {
		'ExtUtils::MakeMaker' => 0,
	},
	'NAME' => 'IO::Barf',
	'PREREQ_PM' => {
		'Error::Pure' => 0.01,
		'Exporter' => 0,
		'Readonly' => 0,
	},
	'VERSION' => 0.01,
	'test' => {
		'TESTS' => 't/IO::Barf/*.t',
	},
);
