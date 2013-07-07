#!/bin/bash

egrep -i '.+en anglais\]\]|Mot(|s) anglais' newpages.txt >> EnglishtoFrench.txt

ETOF=`stat --print=%s EnglishtoFrench.txt`

if [ $ETOF -ne 0 ];
then
  export CATFILE="EnglishtoFrench.txt"
  export CATNAME="Français à anglais"
  $CATEGORIZE
fi

rm EnglishtoFrench.txt
