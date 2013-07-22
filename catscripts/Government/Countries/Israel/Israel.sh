#!/bin/bash

egrep -i 'Isra(e|ë)l' newpages.txt | egrep -iv 'Jeru(-|)salem|Tel(| )Aviv|Israelite' >> Israel.txt
egrep -i 'J(e|é)ru(-|)salem' newpages.txt | egrep -iv 'Jerusalem artichoke' >> Jerusalem.txt #Jerusalem artichoke is a tuber from a biannual sunflower, and has nothing to do with the city or Israel
egrep -i 'Tel(| )Aviv' newpages.txt >> TelAviv.txt

ISRAEL=`stat --print=%s Israel.txt`
JERUSALEM=`stat --print=%s Jerusalem.txt`
TELAVIV=`stat --print=%s TelAviv.txt`

if [ $ISRAEL -ne 0 ];
then
  export CATFILE="Israel.txt"
  export CATNAME="Israël"
  $CATEGORIZE
fi

if [ $JERUSALEM -ne 0 ];
then
  export CATFILE="Jerusalem.txt"
  export CATNAME="Jérusalem"
  $CATEGORIZE
fi

if [ $TELAVIV -ne 0 ];
then
  export CATFILE="TelAviv.txt"
  export CATNAME="Tel Aviv"
  $CATEGORIZE
fi

rm Israel.txt
rm Jerusalem.txt
rm TelAviv.txt
