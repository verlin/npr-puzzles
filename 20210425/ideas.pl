#!/usr/bin/perl

use strict;

my @vowel = ('A','E','I','O','U');
my @consonant = ('B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Z');

my $firstletter = 0;
my $secondletter = 0;
my $thirdletter = 0;
my $fourthletter = 0;
my $fifthletter = 0;

while ($firstletter < 20) {
  while ($secondletter < 20) {
#    while ($thirdletter < 25) {
      while ($fourthletter < 5) {
        while ($fifthletter < 5) {
          my $searchString =  $consonant[$firstletter];
          $searchString = $searchString .  $consonant[$secondletter];
#          if ($thirdletter < 5) {
#            $searchString = $searchString . $vowel[$thirdletter];
#          } else {
#            $searchString = $searchString . $consonant[$thirdletter - 5];
#          }
          $searchString = $searchString . $vowel[$fourthletter];
          $searchString = $searchString . $vowel[$fifthletter]; print $searchString .  "\n";
          my @args = ("wget","https://www.bing.com/news/search?q=$searchString&FORM=HDRSC6");
          system(@args) == 0 or die "system @args failed: $?";
          $fifthletter++;
        }
        $fourthletter++;
        $fifthletter = 0;
      }
#      $thirdletter++;
      $fourthletter = 0;
#    }
    $secondletter++;
#    $thirdletter = 0;
  }
  $firstletter++;
  $secondletter = 0;
}

exit 0;
