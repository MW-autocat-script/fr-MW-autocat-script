#!/bin/bash


if [ "$DEBUG" == "yes" ];
then
  printf "Starting Albania\n" 
fi

egrep -i 'Albanie' newpages.txt >> Albania.txt

ALBANIA=`stat --print=%s Albania.txt`

if [ $ALBANIA -ne 0 ];
then
  export CATFILE="Albania.txt"
  export CATNAME="Albanie"
  $CATEGORIZE
fi

rm Albania.txt

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Albania\n" 
fi
