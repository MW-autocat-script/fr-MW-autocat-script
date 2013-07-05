#!/bin/bash

egrep -i 'Volcan' newpages.txt | egrep -iv 'RuneScape' >> Volcanoes.txt
egrep -i 'Tremblement(s|)( |)de( |)terre' newpages.txt >> Earthquakes.txt
egrep -i 'sismographe|sismologie|g(é|e)ologie|g(é|e)ologique|tremblement de terre' newpages.txt | egrep -iv 'volcano|Tremblement(s|)( |)de( |)terre' >> Geology.txt

GEOLOGY=`stat --print=%s Geology.txt`
VOLCANOES=`stat --print=%s Volcanoes.txt`
EARTHQUAKES=`stat --print=%s Earthquakes.txt`

if [ $GEOLOGY -ne 0 ];
then
  export CATFILE="Geology.txt"
  export CATNAME="Géologie"
  $CATEGORIZE
fi

if [ $EARTHQUAKES -ne 0 ];
then
  export CATFILE="Earthquakes.txt"
  export CATNAME="Tremblements de terre"
  $CATEGORIZE
fi

if [ $VOLCANOES -ne 0 ];
then
  export CATFILE="Volcanoes.txt"
  export CATNAME="Volcans"
  $CATEGORIZE
fi

rm Geology.txt
rm Volcanoes.txt
rm Earthquakes.txt
