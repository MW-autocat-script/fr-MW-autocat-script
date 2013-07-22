#!/bin/bash

egrep -i 'pays (non|pas) reconnu' newpages.txt | egrep -iv 'Taiwan|Taipei' >> Unrecognized.txt
egrep -i 'Sealand' newpages.txt >> Unrecognized.txt
egrep -i 'Seborga' newpages.txt >> Unrecognized.txt
egrep -i 'micronation' newpages.txt >> Unrecognized.txt

UNRECOGNIZED=`stat --print=%s Unrecognized.txt`

if [ $UNRECOGNIZED -ne 0 ];
then
  export CATFILE="Unrecognized.txt"
  export CATNAME="Pays non reconnus"
  $CATEGORIZE
fi

rm Unrecognized.txt

./catscripts/Government/Countries/Unrecognized_countries/Taiwan/Taiwan.sh

