# sub x - Output data structure to stderr
#
# Usage:
#   BEGIN { require 'sub_x.pm' };
#   x 'label', $dataref;

sub x {
  use Data::Dumper;
  warn Data::Dumper->Dump([$_[1]], ["*** $_[0]"]);
}
1;
