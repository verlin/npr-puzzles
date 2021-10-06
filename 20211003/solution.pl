#!/usr/bin/perl
use strict;

open (INPUT,"countrycity.txt");

while (<INPUT>) {
  chomp;
  my ($country, $city, @leftovers) = split('\t');
  my $matchstring = uc($country.$city);
  open (INPUT2,"capitals.txt");

  while (<INPUT2>){
    chomp;
    my ($capital, @leftovers2) = split('\t');
    if (index($matchstring,uc($capital)) ne "-1"  && $city ne $capital) {
      print $matchstring.uc($capital) . "\n";
    }
  }

  close INPUT2;

}

close INPUT;
