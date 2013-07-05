#!/bin/bash

egrep -i '\[\[Comment épelez-vous [a-z]{1,}\]\]' newpages.txt >> Spelling.txt
egrep -i '\[\[Comment épelez-vous "[a-z]{1,}"\]\]' newpages.txt >> Spelling.txt
egrep -i "\[\[Comment épelez-vous '[a-z]{1,}'\]\]" newpages.txt >> Spelling.txt
egrep -i '\[\[Comment épel(é|er|ez|ée|ées|és) [a-z]{1,}\]\]' newpages.txt >> Spelling.txt
egrep -i '\[\[Comment épel(é|er|ez|ée|ées|és) "[a-z]{1,}"\]\]' newpages.txt >> Spelling.txt
egrep -i "\[\[HComment épel(é|er|ez|ée|ées|és) '[a-z]{1,}'\]\]" newpages.txt >> Spelling.txt

SPELLING=`stat --print=%s Spelling.txt`

if [ $SPELLING -ne 0 ];
then
  export CATFILE="Spelling.txt"
  export CATNAME="Orthographe"
  $CATEGORIZE
fi

rm Spelling.txt
