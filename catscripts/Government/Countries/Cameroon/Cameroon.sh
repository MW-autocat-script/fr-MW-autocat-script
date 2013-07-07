#!/bin/bash

egrep -i 'Cameroun' newpages.txt >> Cameroon.txt

CAMEROON=`stat --print=%s Cameroon.txt`

if [ $CAMEROON -ne 0 ];
then
  export CATFILE="Cameroon.txt"
  export CATNAME="Cameroun"
  $CATEGORIZE
fi

rm Cameroon.txt
