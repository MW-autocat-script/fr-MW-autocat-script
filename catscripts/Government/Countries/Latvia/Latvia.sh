#!/bin/bash

egrep -i 'Lettonie' newpages.txt >> Latvia.txt

LATVIA=`stat --print=%s Latvia.txt`

if [ $LATVIA -ne 0 ];
then
  export CATFILE="Latvia.txt"
  export CATNAME="Lettonie"
  $CATEGORIZE
fi

rm Latvia.txt
