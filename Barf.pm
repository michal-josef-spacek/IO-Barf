#------------------------------------------------------------------------------
package IO::Barf;
#------------------------------------------------------------------------------

# Pragmas.
use base qw(Exporter);
use strict;
use warnings;

# Modules.
use Error::Simple::Multiple qw(err);
use Readonly;

# Constants.
Readonly::Array our @EXPORT_OK => qw(barf);

# Version.
our $VERSION = 0.01;

#------------------------------------------------------------------------------
sub barf {
#------------------------------------------------------------------------------
# Barf content to file.

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

 TODO

=head1 DEPENDENCIES

L<Error::Simple::Multiple(3pm)>,
L<Readonly(3pm)>.

=head1 SEE ALSO

L<Perl6::Slurp(3pm)>.

=head1 AUTHOR

Michal Špaček L<tupinek@gmail.com>

=head1 LICENSE AND COPYRIGHT

BSD license.

=head1 VERSION

0.01

=cut
