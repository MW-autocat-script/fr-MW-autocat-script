#!/bin/bash

cat newpages.txt | egrep -i '(AdventureQuest|Adventure Quest)(World(|s)| World(|s))|AQW|Valencia' >> AdventureQuestWorlds.txt

AQW=`stat --print=%s AdventureQuestWorlds.txt`

if [ $AQW -ne 0 ];
then
  export CATFILE="AdventureQuestWorlds.txt"
  export CATNAME="Adventure Quest Worlds"
  ./catscripts/Categorize.sh
fi

rm AdventureQuestWorlds.txt
