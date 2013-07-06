#!/bin/bash

egrep -i 'Hunger Game|Peeta|Everdeen|Katniss|Haymitch|Nightlock' newpages.txt >> TheHungerGames.txt

HUNGER=`stat --print=%s TheHungerGames.txt`

if [ $HUNGER -ne 0 ];
then
  export CATFILE="TheHungerGames.txt"
  export CATNAME="Hunger Games"
  $CATEGORIZE
fi

rm TheHungerGames.txt
