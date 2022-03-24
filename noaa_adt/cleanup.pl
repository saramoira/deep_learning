#!/usr/bin/perl -w

use strict;
use warnings;

opendir IN, 'raw';
my @in = grep { /^[^.]/ } readdir IN;	# reads all file names from current directory
closedir IN;

for my $in (@in) {
  open IN, '<', "raw/$in" || next;
  open OUT, '>', "clean_output/$in" || die "can't open file output/$in";
  while(<IN>) { 						# reads input file line by line
    s/NO LIMIT/none/;	
    s/IR|\///g;	
    s/MW ON|MW HOLD|MW Adjst|MW AdjEnd/MW/;	
  } continue {
        print OUT unless (m/Utilizing|Successfully|LAND/);	# cuts unnecessary lines
        if(eof){						# if the next line is the end-of-file
            close ARGV ;				# closes the current filehandle to reset $.
        }
    }
  close OUT;
  close IN;
}