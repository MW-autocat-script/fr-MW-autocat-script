#!/bin/bash

egrep -i 'Bahreïn' newpages.txt >> Bahrain.txt

BAHRAIN=`stat --print=%s Bahrain.txt`

if [ $BAHRAIN -ne 0 ];
then
  export CATFILE="Bahrain.txt"
  export CATNAME="Bahreïn"
  $CATEGORIZE
fi

rm Bahrain.txt
