#!/bin/bash

egrep -i 'Fidji' newpages.txt >> Fiji.txt

FIJI=`stat --print=%s Fiji.txt`

if [ $FIJI -ne 0 ];
then
  export CATFILE="Fiji.txt"
  export CATNAME="Fidji"
  $CATEGORIZE
fi

rm Fiji.txt
