#!/bin/bash

KEYWORDS_EGYPT="(É|E)gypte"
KEYWORDS_ANCIENTEGYPT="(É|E)gypte antique|Tutankhamen|Tout(a|â)nkhamon"
KEYWORDS_NILERIVER="Nile River|River Nile|Nile delta|Aswan dam|Nil\b|Delta du Nil"

egrep -i "$KEYWORDS_EGYPT" newpages.txt | egrep -iv "$KEYWORDS_ANCIENTEGYPYT|$KEYWORDS_NILERIVER" >> Egypt.txt
egrep -i "$KEYWORDS_ANCIENTEGYPT" newpages.txt >> AncientEgypt.txt
egrep -i "$KEYWORDS_NILERIVER" newpages.txt >> NileRiver.txt

EGYPT=`stat --print=%s Egypt.txt`
ANCIENT=`stat --print=%s AncientEgypt.txt`
NILE=`stat --print=%s NileRiver.txt`

if [ $EGYPT -ne 0 ];
then
  export CATFILE="Egypt.txt"
  export CATNAME="Égypte"
  $CATEGORIZE
fi

if [ $ANCIENT -ne 0 ];
then
  export CATFILE="AncientEgypt.txt"
  export CATNAME="Égypte antique"
  $CATEGORIZE
fi

if [ $NILE -ne 0 ];
then
  export CATFILE="NileRiver.txt"
  export CATNAME="Nil (fleuve)"
  $CATEGORIZE
fi

rm Egypt.txt
rm AncientEgypt.txt
rm NileRiver.txt
