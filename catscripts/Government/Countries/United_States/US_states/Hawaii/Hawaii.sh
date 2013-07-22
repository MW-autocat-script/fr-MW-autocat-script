#!/bin/bash

KEYWORDS_HAWAII="Hawa(ï|ii)(|s)\b|Hawai'i|\bOahu"
KEYWORDS_HONOLULU="Honolulu"
KEYWORDS_PEARLHARBOR="Pearl(| )Harbo(|u)r"
KEYWORDS_HAWAII_EXCLUDE="$KEYWORDS_HONOLULU|$KEYWORDS_PEARLHARBOR|Hawa(ï|ii) (5|Five)(-| )0|Hawa(ï|ii) Police d'État"

egrep -i "$KEYWORDS_HAWAII" newpages.txt | egrep -iv "$KEYWORDS_HAWAII_EXCLUDE" >> Hawaii.txt
egrep -i "$KEYWORDS_HONOLULU" newpages.txt >> Honolulu.txt
egrep -i "$KEYWORDS_PEARLHARBOR" newpages.txt >> PearlHarbor.txt

HAWAII=`stat --print=%s Hawaii.txt`
HONOLULU=`stat --print=%s Honolulu.txt`
PEARLHORBOR=`stat --print=%s PearlHarbor.txt`

if [ $HAWAII -ne 0 ];
then
  export CATFILE="Hawaii.txt"
  export CATNAME="Hawaii"
  $CATEGORIZE
fi

if [ $HONOLULU -ne 0 ];
then
  export CATFILE="Honolulu.txt"
  export CATNAME="Honolulu"
  $CATEGORIZE
fi

if [ $PEARLHORBOR -ne 0 ];
then
  export CATFILE="PearlHarbor.txt"
  export CATNAME="Pearl Harbor"
  $CATEGORIZE
fi

rm Hawaii.txt
rm Honolulu.txt
rm PearlHarbor.txt
