#!/bin/bash

egrep -i 'Danemark' newpages.txt | egrep -iv 'Gro(e|ë)nland' >> Denmark.txt
egrep -i 'Gro(e|ë)nland' newpages.txt >> Greenland.txt

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
