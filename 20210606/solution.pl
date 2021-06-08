#!/usr/bin/perl

use strict;

open (OSCARS,"pictures.csv");
my $count = 0;

my @pictures;

while (<OSCARS>) {
  my @fields = split(/,/,$_);
#  $fields[0] =~ s/(?<=\S) +//g;
  $pictures[$count] = uc substr($fields[0],1);
  $count++;
}

close OSCARS;

open (GEO,"country-list.csv");

while (<GEO>) {
  my @fields = split(/,/,$_);
  $fields[0] = substr($fields[0],1,-1);
  $fields[1] = substr($fields[1],1,-1);
  my $compstr = $fields[0] . " " . $fields[1];
#  $compstr =~ s/(?<=\S) +//g;
  $compstr = uc $compstr;
  my $count2 = 1;
  until ($count2 == $count) {
#print $compstr . " " . $pictures[$count2] . "\n";
    if (index($compstr,$pictures[$count2]) ne "-1") {
      print $fields[0] . " " . $fields[1] . " " . $pictures[$count2] . "\n";
    }
    $count2++;
  }
}

close GEO;
