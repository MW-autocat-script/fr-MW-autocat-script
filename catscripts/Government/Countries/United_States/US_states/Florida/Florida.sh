#!/bin/bash

egrep -i 'Florid(a|e)' newpages.txt | egrep -iv 'Miami|Orlando' >> Florida.txt
egrep -i 'Everglades' newpages.txt >> Florida.txt
egrep -i 'Miami' newpages.txt | egrep -iv '(CSI|Les Experts)(:|| )Miami' >> Miami.txt
egrep -i 'Orlando' newpages.txt | egrep -iv 'Orlando Bloom|RuneScape|Orlando Smith' >> Orlando.txt

FLORIDA=`stat --print=%s Florida.txt`
MIAMI=`stat --print=%s Miami.txt`
ORLANDO=`stat --print=%s Orlando.txt`

if [ $FLORIDA -ne 0 ];
then
  export CATFILE="Florida.txt"
  export CATNAME="Floride"
  $CATEGORIZE
fi

if [ $MIAMI -ne 0 ];
then
  export CATFILE="Miami.txt"
  export CATNAME="Miami"
  $CATEGORIZE
fi

if [ $ORLANDO -ne 0 ];
then
  export CATFILE="Orlando.txt"
  export CATNAME="Orlando"
  $CATEGORIZE
fi

rm Florida.txt
rm Miami.txt
rm Orlando.txt
