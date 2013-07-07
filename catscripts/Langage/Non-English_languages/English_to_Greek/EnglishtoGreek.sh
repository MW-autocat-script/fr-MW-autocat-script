#!/bin/bash

egrep -i 'Mot grecque|Comment tu di.+ en grecque' newpages.txt >> EnglishtoGreek.txt

GREEK=`stat --print=%s EnglishtoGreek.txt`

if [ $GREEK -ne 0 ];
then
  export CATFILE="EnglishtoGreek.txt"
  export CATNAME="Français à grecque"
  $CATEGORIZE
fi

rm EnglishtoGreek.txt
