#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Antonyms\n" 
fi

egrep -i "Quel(le|) est l'oppos(é|e|er|ition) (de|du) [a-z]{1,}" newpages.txt >> Antonyms.txt
egrep -i "Quel(le|) est l'antonyme de[a-z]{1,}" newpages.txt >> Antonyms.txt
egrep -i "\[\[antonyme de [a-z]{1,}\]\]" newpages.txt >> Antonyms.txt
egrep -i "\[\[Antonyme(s|) pour [a-z]{1,}\]\]" newpages.txt >> Antonyms.txt
egrep -i 'antonyme(s|)' newpages.txt >> Antonyms.txt

ANTONYMS=`stat --print=%s Antonyms.txt`

if [ $ANTONYMS -ne 0 ];
then
  export CATFILE="Antonyms.txt"
  export CATNAME="Antonymes"
  $CATEGORIZE
fi

rm Antonyms.txt

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Antonymes\n" 
fi
