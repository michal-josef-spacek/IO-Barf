# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'NAME' => 'IO::Barf',
	'PREREQ_PM' => {
		'Error::Simple::Multiple' => 0.05,
		'Readonly' => 0,
	},
	'VERSION' => 0.01,
	'test' => {
		'TESTS' => 't/IO::Barf/*.t',
	},
);
