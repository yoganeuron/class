<?php

#Author - Sarah Bertrand 
print "Hello World\n";

#variable
$DNA = 'AGCTAGCTGACTATACGTGACTAGCTATCG';
print $DNA. "\n";

$DNA2 = 'ACCGATGCTAGCTAGCTATGCTA';
print "here are the original dna fragments:\n\n";
print $DNA. "\n";
print $DNA2. "\n";
$DNA3 = "$DNA$DNA2";
print "Here is my concatenation:\n\n";
print $DNA3. "\n";

$RNA = $DNA3;
$RNA = str_replace("T", "U",$RNA);
print "Here is the result of transcribing the DNA to RNA:\n\n";
print "$RNA\n";

?>

