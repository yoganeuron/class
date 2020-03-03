#!/usr/bin/perl -w
#This script gets the pubmed abstracts for a given term

use LWP::Simple;

unlink "abstracts.txt";

$search_term = "breast cancer";

$search_term =~ s/\s/+/g;

$retmax = 10;

$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';

$db_name='pmc';

$url = $base . "esearch.fcgi?db=$db_name&retmax=$retmax&term=$search_term";

$esearch_result = get($url);

@ids = ($esearch_result =~ m|.*<Id>(.*)</Id>.*|g);

foreach $id (@ids)
    {
    print "$id\n";
    $fetchurl = $base."efetch.fcgi?db=pubmed&id=$id&retmode=text&rettype=abstract";
    open(OUTFILE,'>>','abstracts.txt');
    print OUTFILE get($fetchurl);
    sleep 1;
    close OUTFILE;
    }



