#!/usr/bin/perl
use strict;

open (INPUT,"countrycity.txt");

while (<INPUT>) {
  chomp;
  my ($country, $city, @leftovers) = split('\t');
  my $country = uc($country);
  open (INPUT2,"demonyms.txt");

  while (<INPUT2>){
    chomp;
    my ($city, $adjective, $capital) = split('\t');
    $capital = uc($capital);
    if (length($country) == length($capital)) {
      my $count = 0;
      my $matches = 0;
      while ($count < length($country)) {
        if (substr($capital,$count,1) eq substr($country,$count,1)) {
          $matches++;
        }
        $count++;
      }
      if (($matches + 2) == length($country)) {
        print $country." ".uc($capital) . "\n";
      }
    }
  }

  close INPUT2;

}

close INPUT;
