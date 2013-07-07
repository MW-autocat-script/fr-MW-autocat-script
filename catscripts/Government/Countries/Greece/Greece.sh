#!/bin/bash

egrep -i 'Gr(è|e)ce' newpages.txt | egrep -iv 'Grèce antique' >> Greece.txt
egrep -i 'Grèce antique' newpages.txt >> Ancient.txt

GREECE=`stat --print=%s Greece.txt`
ANCIENT=`stat --print=%s Ancient.txt`

if [ $GREECE -ne 0 ];
then
  export CATFILE="Greece.txt"
  export CATNAME="Grèce"
  $CATEGORIZE
fi

if [ $ANCIENT -ne 0 ];
then
  export CATFILE="Ancient.txt"
  export CATNAME="Grèce antique"
  $CATEGORIZE
fi

rm Greece.txt
rm Ancient.txt
