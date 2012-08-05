#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Module.
use File::Temp qw(tempfile);
use IO::Barf qw(barf);

# Content.
my $content = "foo\nbar\n";

# Temporary file.
my $temp_file = File::Temp->new->filename;

# Barf out.
barf($temp_file, $content);

# Print tempory file.
system("cat $temp_file");

# Output:
# foo
# bar