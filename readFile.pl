#!/usr/bin/perl
#
#   Packages and modules
#
use strict;
use warnings;
use version;   our $VERSION = qv('5.16.0');   # This is the version of Perl to be used
use Text::CSV  1.32;   # We will be using the CSV module (version 1.32 or higher)
                       # to parse each line
my $EMPTY = q{};
my $SPACE = q{ };
my $COMMA = q{,};

my $filename     = $EMPTY;
my @records;
my $Cant=0;
my $record_count = 0;
my @locations;
my $csv          = Text::CSV->new({ sep_char => $COMMA });


if ($#ARGV != 0 ) {
   print "Usage: readFile.pl <names file>\n" or
      die "Print failure\n";
   exit;
} else {
   $filename = $ARGV[0];
}

open my $names_fh, '<', $filename
   or die "Unable to open names file: $filename\n";

@records = <$names_fh>;

close $names_fh or
   die "Unable to close: $ARGV[0]\n";

my @years;
my @Type;
my @Subtype;
my @vector;
my @cordinate;
my @value;
foreach my $name_record ( @records ) {
   if ( $csv->parse($name_record) ) {
      my @master_fields = $csv->fields();
      $years[$record_count] = $master_fields[0];
      $locations[$record_count] = $master_fields[1];
      $Type[$record_count] = $master_fields[2];
      $Subtype[$record_count] = $master_fields[3];
      $vector[$record_count] = $master_fields[4];
      $cordinate[$record_count] = $master_fields[5];
      $value[$record_count] = $master_fields[6];

      $record_count++;
   } else {
      ++$Cant;
      warn "Line/record could not be parsed: $record_count $records[$record_count]\n";
   }
}
print "$Cant\n";
