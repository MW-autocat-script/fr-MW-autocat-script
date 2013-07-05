#!/bin/bash

egrep -i 'dans une fraction\]\]|transform(é|e|er|ée|ées|és)\]\]' newpages.txt > Fractions.txt
egrep -i 'dans la forme la plus simple\]\]' newpages.txt >> Fractions.txt
egrep -i 'fraction réduite' newpages.txt >> Fractions.txt
egrep -i 'simplest form of [0-9]{1,}/[0-9]{1,}' newpages.txt >> Fractions.txt
egrep -i '[0-9]{1,}(/|\\)[0-9]{1,} de [0-9]{1,}' newpages.txt >> Fractions.txt
egrep -i '[0-9]{1,}(/|\\)[0-9]{1,}(| )(plus|moins|fois|divis(é|e|er|ée|ées|és)(| )par)(| )[0-9]{1,}(/|\\)[0-9]{1,}' newpages.txt >> Fractions.txt
egrep -i '[0-9]{1,}(/|\\)[0-9]{1,}(| )(plus|moins|fois|divis(é|e|er|ée|ées|és)(| )par)(| )[0-9]{1.} [0-9]{1,}(/|\\)[0-9]{1,}' newpages.txt >> Fractions.txt

FRACTIONS=`stat --print=%s Fractions.txt`

if [ $FRACTIONS -ne 0 ];
then
  export CATFILE="Fractions.txt"
  export CATNAME="Fractions"
  $CATEGORIZE
fi

rm Fractions.txt
