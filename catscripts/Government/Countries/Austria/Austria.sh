#!/bin/bash

egrep -i 'Autriche' newpages.txt >> Austria.txt

AUSTRIA=`stat --print=%s Austria.txt`

if [ $AUSTRIA -ne 0 ];
then
  export CATFILE="Austria.txt"
  export CATNAME="Autriche"
  $CATEGORIZE
fi

rm Austria.txt
