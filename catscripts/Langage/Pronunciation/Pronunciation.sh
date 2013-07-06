#!/bin/bash

KEYWORDS_PRONUNCIATION="Comment prononcez-vous|Comment est .+ prononc(ez|é|e|ée|és|ées)|prononciation|Comment pronounc(ez|é|e|és|ée|ées)"

egrep -i "$KEYWORDS_PRONUNCIATION" newpages.txt >> Pronunciation.txt

PRONUNCIATION=`stat --print=%s Pronunciation.txt`

if [ $PRONUNCIATION -ne 0 ];
then
  export CATFILE="Pronunciation.txt"
  export CATNAME="Prononciation"
  $CATEGORIZE
fi

rm Pronunciation.txt
