#!/bin/bash

egrep -i 'R(é|e)publique Dominicane' newpages.txt >> DominicanRepublic.txt

DOMINICAN=`stat --print=%s DominicanRepublic.txt`

if [ $DOMINICAN -ne 0 ];
then
  export CATFILE="DominicanRepublic.txt"
  export CATNAME="République Dominicane"
  $CATEGORIZE
fi

rm DominicanRepublic.txt
