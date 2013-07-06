#!/bin/bash

egrep -i 'rime(s|)\b' newpages.txt | egrep -iv 'nursery rhyme' >> Rhymes.txt

RHYMES=`stat --print=%s Rhymes.txt`

if [ $RHYMES -ne 0 ];
then
  export CATFILE="Rhymes.txt"
  export CATNAME="Rimes"
  $CATEGORIZE
fi

rm Rhymes.txt
