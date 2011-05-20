# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'AUTHOR' => 'Michal Špaček <skim@cpan.org>',
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
