#!/bin/bash

egrep -i 'B(e|é)nin' newpages.txt >> Benin.txt

BENIN=`stat --print=%s Benin.txt`

if [ $BENIN -ne 0 ];
then
  export CATFILE="Benin.txt"
  export CATNAME="Bénin"
  $CATEGORIZE
fi

rm Benin.txt
