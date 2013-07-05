#!/bin/bash

egrep -i 'variole' newpages.txt >> Smallpox.txt

SMALLPOX=`stat --print=%s Smallpox.txt`

if [ $SMALLPOX -ne 0 ];
then
  export CATFILE="Smallpox.txt"
  export CATNAME="Variole"
  $CATEGORIZE
fi

rm Smallpox.txt
