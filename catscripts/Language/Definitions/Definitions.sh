#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Definitions\n" 
fi

egrep -i "(^|\[\[)(C'est quoi un|Qu'est ce que (c'est|sait|sais|sait|s'est|ces|ses) (un|des)) [abcdefghijklmnopqrstuvwxyz]{1,} (|[abcdefghijklmnopqrstuvwxyz]{1,})($|\]\])" newpages.txt >> Definitions.txt
egrep -i "(^|\[\[)Quelle est la définition (de|d'un) [abcdefghijklmnopqrstuvwxyz]{1,}($|\]\])" newpages.txt >> Definitions.txt
egrep -i '(^|\[\[)D(é|e)finition(s|) de [abcdefghijklmnopqrstuvwxyz]{1,}($|\]\])' newpages.txt >> Definitions.txt
egrep -i "(^|\[\[)Qu'est-ce que [abcdefghijklmnopqrstuvwxyz]{1,} veut dire($|\]\])" newpages.txt >> Definitions.txt
egrep -i '(^|\[\[)What does [abcdefghijklmnopqrstuvwxyz]{1,} [abcdefghijklmnopqrstuvwxyz]{1,} mean($|\]\])' newpages.txt >> Definitions.txt
egrep -i "(^|\[\[)(C'est quoi un|Qu'est ce que (c'est|sait|sais|sait|s'est|ces|ses) (un|des)) [a-z]{6,} [a-z]{6,}($|\]\])" newpages.txt >> Definitions.txt
egrep -i "(Qu'est ce que le mot|Le mot) [a-z]{1,} veut (dire|)( |)quoi" newpages.txt >> Definitions.txt
egrep -i "Qu'est ce que le (sur|)nom [a-z]{1,} veut dire" newpages.txt >> NameMeanings.txt

DEFINITIONS=`stat --print=%s Definitions.txt`
NAMEMEANINGS=`stat --print=%s NameMeanings.txt`

if [ $DEFINITIONS -ne 0 ];
then
  export CATFILE="Definitions.txt"
  export CATNAME="Définitions"
  $CATEGORIZE
fi

if [ $NAMEMEANINGS -ne 0 ];
then
  export CATFILE="NameMeanings.txt"
  export CATNAME="Significations de noms"
  $CATEGORIZE
fi

rm Definitions.txt
rm NameMeanings.txt

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Definitions\n" 
fi
