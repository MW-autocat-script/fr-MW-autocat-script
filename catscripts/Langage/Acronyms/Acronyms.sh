#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Acronyms\n" 
fi

egrep -i 'acronyme|initialism' newpages.txt >> Acronyms.txt
egrep "\[\[Qu'est ce que [A-Z]{2,} veut dire\]\]" newpages.txt >> Acronyms.txt
egrep "\[\[Qu'est ce que les initial(s|) [A-Z]{2,} (veut|veulent) dire" newpages.txt >> Acronyms.txt
egrep "[A-Z] {2,} veut dire quoi" newpages.txt >> Acronyms.txt

ACRONYMS=`stat --print=%s Acronyms.txt`

if [ $ACRONYMS -ne 0 ];
then
  export CATFILE="Acronyms.txt"
  export CATNAME="Acronymes"
  $CATEGORIZE
fi

rm Acronyms.txt

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Acronyms\n" 
fi
