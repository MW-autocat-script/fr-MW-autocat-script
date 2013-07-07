#!/bin/bash

egrep -i 'Azerbaïdjan' newpages.txt >> Azerbaijan.txt

AZERBAIJAN=`stat --print=%s Azerbaijan.txt`

if [ $AZERBAIJAN -ne 0 ];
then
  export CATFILE="Azerbaijan.txt"
  export CATNAME="Azerbaïdjan"
  $CATEGORIZE
fi

rm Azerbaijan.txt
