#!/bin/bash

egrep -i 'Leuc(é|e)mie' newpages.txt > Leukemia.txt

LEUKEMIA=`stat --print=%s Leukemia.txt`

if [ $LEUKEMIA -ne 0 ];
then
  export CATFILE="Leukemia.txt"
  export CATNAME="Leucémie"
  $CATEGORIZE
fi

rm Leukemia.txt
