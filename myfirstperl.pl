#!/usr/bin/perl -w

#$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
#print $DNA;

#Concatenate DNA
#$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
#$DNA2 = 'ATAGTGCCGTGAGAGTGATGTAGTA';
#print "Here are the original two DNA fragments:\n\n";
#print $DNA,"\n";
#print $DNA2,"\n\n";
#$DNA3 = "$DNA$DNA2";
#print "Here is the concatonation of the first two fragments (version 1): \n\n";
#print $DNA3, "\n";

#Transcribe DNA to RNA
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
print "Here is the starting DNA:\n\n";
print $DNA;
$RNA = $DNA;
$RNA =~ s/T/U/g;
print "Here is the result of transcribing DNA to RNA:\n\n";
print "$RNA\n";
