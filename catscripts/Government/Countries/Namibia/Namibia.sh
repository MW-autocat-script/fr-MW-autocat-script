#!/bin/bash

egrep -i 'Namibie' newpages.txt >> Namibia.txt

NAMIBIA=`stat --print=%s Namibia.txt`

if [ $NAMIBIA -ne 0 ];
then
  export CATFILE="Namibia.txt"
  export CATNAME="Namibie"
  $CATEGORIZE
fi

rm Namibia.txt
