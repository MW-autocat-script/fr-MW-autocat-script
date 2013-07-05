#!/bin/bash

egrep -i 'maladie(s|)(| )(de|du|)(coeur|cœur)' newpages.txt >> HeartDisease.txt

HEARTDISEASE=`stat --print=%s HeartDisease.txt`

if [ $HEARTDISEASE -ne 0 ];
then
  export CATFILE="HeartDisease.txt"
  export CATNAME="Maladies du coeur"
  $CATEGORIZE
fi

rm HeartDisease.txt
