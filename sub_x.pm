=head1 NAME

sub x - Simple data dumper

=head1 SYNOPSIS

     BEGIN { require 'sub_x.pm' };
     x 'label', $dataref;

=head1 DESCRIPTION

Dump a data structure to stderr.

=head1 METHODS

=head2 x ($label, $dataref)

Dump a data structure to stderr.

    x 'friend rating', { Tom=>1, Joe=>-1 };

=head1 AUTHOR

Soren Dossing <sauber@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2012 by Soren Dossing

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

=cut

sub x {
  use Data::Dumper;
  warn Data::Dumper->Dump([$_[1]], ["*** $_[0]"]);
}
1;

