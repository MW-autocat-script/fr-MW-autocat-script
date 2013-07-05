#!/bin/bash

egrep -i 'Plan(è|e)te naine' newpages.txt | egrep -iv 'Pluto|Eris' >> Dwarf.txt
egrep -i "Pluton\b" newpages.txt | egrep -iv 'Pluto the Pup' >> Pluto.txt
egrep -i '\bEris' newpages.txt >> Eris.txt

DWARF=`stat --print=%s Dwarf.txt`
PLUTO=`stat --print=%s Pluto.txt`
ERIS=`stat --print=%s Eris.txt`

if [ $DWARF -ne 0 ];
then
  export CATFILE="Dwarf.txt"
  export CATNAME="Planète naine"
  $CATEGORIZE
fi

if [ $PLUTO -ne 0 ];
then
  export CATFILE="Pluto.txt"
  export CATNAME="Pluton"
  $CATEGORIZE
fi

if [ $ERIS -ne 0 ];
then
  export CATFILE="Eris.txt"
  export CATNAME="Eris"
  $CATEGORIZE
fi

rm Dwarf.txt
rm Pluto.txt
rm Eris.txt
