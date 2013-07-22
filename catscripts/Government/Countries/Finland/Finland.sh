#!/bin/bash

egrep -i 'Finlande' newpages.txt >> Finland.txt

FINLAND=`stat --print=%s Finland.txt`

if [ $FINLAND -ne 0 ];
then
  export CATFILE="Finland.txt"
  export CATNAME="Finlande"
  $CATEGORIZE
fi

rm Finland.txt
