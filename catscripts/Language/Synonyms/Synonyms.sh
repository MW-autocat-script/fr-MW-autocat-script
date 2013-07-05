#!/bin/bash

egrep -i "Quel(le|) est un autre mot pour[a-z]{1,}" newpages.txt >> Synonyms.txt
egrep -i "Quel(le|) est un synonyme pour [a-z]{1,}" newpages.txt >> Synonyms.txt
egrep -i "\[\[(Un|) (a|A)utre mot pour [a-z]{1,}\]\]" newpages.txt >> Synonyms.txt

SYNONYMS=`stat --print=%s Synonyms.txt`

if [ $SYNONYMS -ne 0 ];
then
  export CATFILE="Synonyms.txt"
  export CATNAME="Synonymes"
  $CATEGORIZE
fi

rm Synonyms.txt
