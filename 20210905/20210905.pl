#!/usr/bin/perl
use strict;

my @vowels = ('a','e','i','o','u');
my @consonants = ('b','c','d','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z');
my $count = 0;

while ($count < 4) {
  $count++;
  if ($count == 1) {
    for my $a (@vowels) {
    for my $b (@consonants) {
    for my $c (@consonants) {
    for my $d (@consonants) {
      print "$a$b$c$d\n";
    }}}}
  }
  if ($count == 2) {
    for my $a (@consonants) {
    for my $b (@vowels) {
    for my $c (@consonants) {
    for my $d (@consonants) {
      print "$a$b$c$d\n";
    }}}}
  }
  if ($count == 3) {
    for my $a (@consonants) {
    for my $b (@consonants) {
    for my $c (@vowels) {
    for my $d (@consonants) {
      print "$a$b$c$d\n";
    }}}}
  } 
  if ($count == 4) {
    for my $a (@consonants) {
    for my $b (@consonants) {
    for my $c (@consonants) {
    for my $d (@vowels) {
      print "$a$b$c$d\n";
    }}}}
  }
}
