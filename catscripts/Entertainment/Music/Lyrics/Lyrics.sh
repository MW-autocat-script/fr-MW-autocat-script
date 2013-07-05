#!/bin/bash

egrep -i 'lyrique(s|)' newpages.txt >> Lyrics.txt

LYRICS=`stat --print=%s Lyrics.txt`

if [ $LYRICS -ne 0 ];
then
  export CATFILE="Lyrics.txt"
  export CATNAME="Lyriques"
  $CATEGORIZE
fi

rm Lyrics.txt
