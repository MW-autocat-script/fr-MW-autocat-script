#!/bin/bash 

egrep -i 'Chiffre(s|) romain' newpages.txt >> RomanNumerals.txt

NUMERALS=`stat --print=%s RomanNumerals.txt`

if [ $NUMERALS -ne 0 ];
then
  export CATFILE="RomanNumerals.txt"
  export CATNAME="Chiffres romain"
  $CATEGORIZE
fi

rm RomanNumerals.txt
