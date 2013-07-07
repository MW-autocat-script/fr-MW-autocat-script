#!/bin/bash


if [ "$DEBUG" == "yes" ];
then
  printf "Starting Algeria\n" 
fi

egrep -i 'Alg(é|e)rie' newpages.txt >> Algeria.txt

ALGERIA=`stat --print=%s Algeria.txt`

if [ $ALGERIA -ne 0 ];
then
  export CATFILE="Algeria.txt"
  export CATNAME="Algérie"
  $CATEGORIZE
fi

rm Algeria.txt

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Algeria\n" 
fi
