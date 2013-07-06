#!/bin/bash

egrep -i 'parole(s|)' newpages.txt >> Lyrics.txt

LYRICS=`stat --print=%s Lyrics.txt`

if [ $LYRICS -ne 0 ];
then
  export CATFILE="Lyrics.txt"
  export CATNAME="Paroles"
  $CATEGORIZE
fi

rm Lyrics.txt
