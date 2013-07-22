#!/bin/bash

egrep -i 'Indon(e|é)sie\b|Sulawesi|Célèbes' newpages.txt >> Indonesia.txt

INDONESIA=`stat --print=%s Indonesia.txt`

if [ $INDONESIA -ne 0 ];
then
  export CATFILE="Indonesia.txt"
  export CATNAME="Indonésie"
  $CATEGORIZE
fi

rm Indonesia.txt
