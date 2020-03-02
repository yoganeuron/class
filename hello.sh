#!/bin/bash

echo "Hello World"

HELLO="Hello Vijay"

echo $HELLO

#variable a,b
a=1
b=2
echo $a, $b

#arithmatic operators
c=$(( a+b ))
echo "a+b" is $c
echo "a+b" is $(( a-b ))
echo "a*b" is $(( a*b ))

#command substitution
myfiles=$( ls ~/ | wc -l )
echo $myfiles

#user input, get two numbers
#echo "Enter your first number : "
#read firstnumber
#echo "Enter your second number : "
#read secondnumber
#echo $firstnumber 
#echo $secondnumber

#conditionals
#if [ $firstnumber -gt $secondnumber ] 
#then
#echo $firstnumber "is the larger number"
#else
#echo $secondnumber "is the larger number"
#fi

#for loop 
aligners='bwa star bowtie tophat trinity'
for item in $aligners
    do
    echo $item
    done

#funciton to convert celcius to fahrenheit
function ctof
    {
    ft=$(( $1 * (9/5) + 32 ))
    echo $ft
    }
#call the function
ctof 45

