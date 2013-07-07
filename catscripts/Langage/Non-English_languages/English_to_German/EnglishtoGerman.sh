#!/bin/bash

egrep -i 'Comment tu di.+en alleman\]\]' newpages.txt >> EnglishtoGerman.txt
egrep -i "Comment t'écrit.+en alleman\]\]" newpages.txt >> EnglishtoGerman.txt
egrep -i '[abcdefghijklmopqrstuvwxyz]{1,} en alleman\]\]' newpages.txt >> EnglishtoGerman.txt
egrep -i 'Mot alleman' newpages.txt >> EnglishtoGerman.txt

ENGLISHTOGERMAN=`stat --print=%s EnglishtoGerman.txt`

if [ $ENGLISHTOGERMAN -ne 0 ];
then
  export CATFILE="EnglishtoGerman.txt"
  export CATNAME="Français à allemand"
  $CATEGORIZE
fi

rm EnglishtoGerman.txt
