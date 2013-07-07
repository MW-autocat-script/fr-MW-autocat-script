#!/bin/bash

egrep -i 'Danemark' newpages.txt | egrep -iv 'Greenland' >> Denmark.txt
egrep -i 'Groenland' newpages.txt >> Greenland.txt

DENMARK=`stat --print=%s Denmark.txt`
GREENLAND=`stat --print=%s Greenland.txt`

if [ $DENMARK -ne 0 ];
then
  export CATFILE="Denmark.txt"
  export CATNAME="Danemark"
  $CATEGORIZE
fi

if [ $GREENLAND -ne 0 ];
then
  export CATFILE="Greenland.txt"
  export CATNAME="Groenland"
  $CATEGORIZE
fi

rm Denmark.txt
rm Greenland.txt
