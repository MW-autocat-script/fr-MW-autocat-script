#!/bin/bash

egrep -i 'Ta(i|ï)wan|Taipei' newpages.txt >> Taiwan.txt
egrep -i 'République de Chine' newpages.txt | egrep -iv "République populaire de Chine" >> Taiwan.txt

TAIWAN=`stat --print=%s Taiwan.txt`

if [ $TAIWAN -ne 0 ];
then
  export CATFILE="Taiwan.txt"
  export CATNAME="Taiwan"
  $CATEGORIZE
fi

rm Taiwan.txt
