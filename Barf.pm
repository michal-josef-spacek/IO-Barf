package IO::Barf;

# Pragmas.
use base qw(Exporter);
use strict;
use warnings;

# Modules.
use Error::Pure qw(err);
use Readonly;

# Constants.
Readonly::Array our @EXPORT_OK => qw(barf);

# Version.
our $VERSION = 0.01;

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
 use IO::Barf qw(barf);

 # Content.
 my $content = "foo\nbar\n";

 # Barf out.
 barf('/tmp/foo', $content);

 # cat /tmp/foo
 # foo
 # bar

=head1 DEPENDENCIES

L<Error::Pure(3pm)>,
L<Exporter(3pm)>,
L<Readonly(3pm)>.

=head1 SEE ALSO

L<Perl6::Slurp(3pm)>.

=head1 AUTHOR

Michal Špaček L<skim@cpan.org>

=head1 LICENSE AND COPYRIGHT

BSD license.

=head1 VERSION

0.01

=cut
