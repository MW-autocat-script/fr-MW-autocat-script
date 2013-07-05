#!/bin/bash

egrep -i '(^|\[\[)Qui a invent(é|er|e|ée) [abcdefghijklmnopqrstuvwxyz]{1,}($|\]\])' newpages.txt >> Inventions.txt
egrep -i "(^|\[\[)Qui a invent(é|er|e|ée) le [abcdefghijklmnopqrstuvwxyz]{1,}($|\]\])" newpages.txt >> Inventions.txt
egrep -i "(^|\[\[)Qui est l'inventeur (de|du) [abcdefghijklmnopqrstuvwxyz]{1,}($|\]\])" newpages.txt >> Inventions.txt
egrep -i '(^|\[\[)Quand est-ce que .+ invent(é|er|e|ée)($|\]\])' newpages.txt >> Inventions.txt
egrep -i '(^|\[\[)Où est-ce que .+ invent(é|er|e|ée) ($|\]\])' newpages.txt >> Inventions.txt

INVENTIONS=`stat --print=%s Inventions.txt`

if [ $INVENTIONS -ne 0 ];
then
  export CATFILE="Inventions.txt"
  export CATNAME="Inventions"
  $CATEGORIZE
fi

rm Inventions.txt
