#!usr/local/bin/perl -w
use LWP::Simple;

#query
$gi_list = '24475906,224465210,50978625,9507198';

#url

#db=nucleotide ; searching the nucleotide database
#id= ; this is  where you specify the accesion number
#$gi_list ; this variable we created and holds several accession numbers. This is how you would do multiple searches with one line of code.
#rettype=acc ; retrieve type/we are searching with accesion number
#efetch is a program
#You separate you parameters by the & symbol
$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';
$url = $base . "efetch.fcgi?db=nucleotide&id=$gi_list&rettype=acc";

#post
$output = get($url) ;

#print
print "$output";



