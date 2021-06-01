#!/usr/bin/perl

use strict;

open INPUT,"words_alpha.txt";
open OUTPUT,">solution.txt";

while (<INPUT>) {
  chomp;
  my $check = $_;
  if (length($check) == 8) {
    if ((substr($check,2,1) eq 'a') and (substr($check,5,1) eq 'a')) {
      my $result = substr($check,0,2) . " " . substr($check,3,2) . " " . substr($check,6,2);
      print OUTPUT $check . " " . $result . "\n";
      print $check . " " . $result . "\n";
    }
  }
}

close OUTPUT;
close INPUT;

exit 0;
