# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'NAME' => 'IO::Barf',
	'PREREQ_PM' => {
		'Error::Pure' => 0.01,
		'Readonly' => 0,
	},
	'VERSION' => 0.01,
	'test' => {
		'TESTS' => 't/IO::Barf/*.t',
	},
);
