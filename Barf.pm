package IO::Barf;

# Pragmas.
use base qw(Exporter);
use strict;
use warnings;

# Modules.
use Error::Pure qw(err);
use Readonly;

# Constants.
Readonly::Array our @EXPORT => qw(barf);

# Version.
our $VERSION = 0.02;

# Barf content to file.
sub barf {
	my ($file, $content) = @_;
	open my $ouf, '>', $file or err "Cannot open file '$file'.";
	print {$ouf} $content;
	close $ouf or err "Cannot close file '$file'.";
	return;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

IO::Barf - Barfing content to output file.

=head1 SYNOPSIS

 use IO::Barf qw(barf);
 barf($file, 'CONTENT');

=head1 SUBROUTINES

=over 8

=item C<barf($file, $content)>

 Barf content to file.

=back

=head1 ERRORS

 barf():
         Cannot open file '%s'.
         Cannot close file '%s'.

=head1 EXAMPLE

 # Pragmas.
 use strict;
 use warnings;

 # Module.
 use File::Temp qw(tempfile);
 use IO::Barf;

 # Content.
 my $content = "foo\nbar\n";

 # Temporary file.
 my $temp_file = File::Temp->new->filename;

 # Barf out.
 barf($temp_file, $content);

 # Print tempory file.
 system("cat $temp_file");

 # Unlink temporary file.
 unlink $temp_file;

 # Output:
 # foo
 # bar

=head1 DEPENDENCIES

L<Error::Pure>,
L<Exporter>,
L<Readonly>.

=head1 SEE ALSO

L<IO::Any>,
L<File::Slurp>,
L<Perl6::Slurp>.

=head1 REPOSITORY

L<https://github.com/tupinek/IO-Barf>

=head1 AUTHOR

Michal Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

BSD license.

=head1 VERSION

0.02

=cut
