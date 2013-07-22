#!/bin/bash

egrep -i 'Tanzani(a|e)' newpages.txt >> Tanzia.txt

TANZIA=`stat --print=%s Tanzia.txt`

if [ $TANZIA -ne 0 ];
then
  export CATFILE="Tanzia.txt"
  export CATNAME="Tanzanie"
  $CATEGORIZE
fi

rm Tanzia.txt
