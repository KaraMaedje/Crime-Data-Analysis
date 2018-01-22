#!/usr/bin/perl
#
#   Packages and modules
#
use strict;
use warnings;
use feature qw/say/;
use autodie;
no warnings;
use version;   our $VERSION = qv('5.16.0');   # This is the version of Perl to be used
use Text::CSV  1.32;   # We will be using the CSV module (version 1.32 or higher)
                       # to parse each line

#
#   Variables to be used
#
my $EMPTY = q{};
my $SPACE = q{ };
my $COMMA = q{,};

my $filename     = $EMPTY;
our $plotfile;
my @records;
our $record_count = -1;
our @date;
our @location;
our @violation;
our @statistic;
our @vector;
our @coordinate;
our @value;
our $csv          = Text::CSV->new({ sep_char => $COMMA });


$filename = 'ProjectData.csv';
#
#   Open the input file and load the contents into records array
#
open my $names_fh, '<', $filename
   or die "Unable to open names file: $filename\n";

@records = <$names_fh>;

close $names_fh or
   die "Unable to close: $filename\n";   # Close the input file


#
#   Parse each line and store the information in arrays 
#   representing each field
#
#   Extract each field from each name record as delimited by a comma
#
my $unparsed;
foreach my $name_record ( @records ) {
   $record_count++;
   if ( $csv->parse($name_record) ) {
      my @master_fields = $csv->fields();
      #$record_count++;
      $date[$record_count] = $master_fields[0];
      $location[$record_count] = $master_fields[1];
      $violation[$record_count] = $master_fields[2];
      $statistic[$record_count] = $master_fields[3];
      $vector[$record_count] = $master_fields[4];
      $coordinate[$record_count] = $master_fields[5]; 
      $value[$record_count] = $master_fields[6];
   }else {
      $unparsed++;
      #warn "Line/record could not be parsed:   $records[$record_count]\n";
   }
}
$plotfile = 'plotfile.csv';
open (my $LOG, '>>', $plotfile);
select $LOG;
truncate $plotfile, 0;

print "\"Violation\",\"Year\",\"Number\"\n";
for my $i (0..$record_count) {
   if(($location[$i] eq "Canada") && ($violation[$i] eq "Total, all violations") && ($statistic[$i] eq "Actual incidents")) {
      print "\"Total Violations in Canada\",$date[$i],$value[$i]\n";
   }
}
select STDOUT;

print "$unparsed\n";

#
#   End of Script
#

