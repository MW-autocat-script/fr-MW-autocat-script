#!/bin/bash

egrep -i 'Brazil|Br(e|é)sil|Rio\b' newpages.txt >> Brazil.txt

BRAZIL=`stat --print=%s Brazil.txt`

if [ $BRAZIL -ne 0 ];
then
  export CATFILE="Brazil.txt"
  export CATNAME="Brésil"
  $CATEGORIZE
fi

rm Brazil.txt
