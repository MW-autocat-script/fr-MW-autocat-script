#!/bin/bash

egrep -i 'Dora(| )the(| )Explorer' newpages.txt >> Dora.txt

DORA=`stat --print=%s Dora.txt`

if [ $DORA -ne 0 ];
then
  export CATFILE="Dora.txt"
  export CATNAME="Dora l'exploratrice"
  $CATEGORIZE
fi

rm Dora.txt
