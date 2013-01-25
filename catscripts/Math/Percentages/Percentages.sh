#!/bin/bash

cat newpages.txt | egrep -i '[0-9]{1,} is what percent of [0-9]{1,}' >> Percentages.txt
cat newpages.txt | egrep -i '\$[0-9]{1,} is what percent of \$[0-9]{1,}' >> Percentages.txt
cat newpages.txt | egrep -i '\$[0-9]{1,}\.[0-9]{1,} is what percent of \$[0-9]{1,}\.[0-9]{1,}' >> Percentages.txt
egrep -i '^What( is|s) [0-9]{1,}(| )% of [0-9]{1,}' newpages.txt >> Percentages.txt


PERCENTAGES=`stat --print=%s Percentages.txt`

if [ $PERCENTAGES -ne 0 ];
then
  export CATFILE="Percentages.txt"
  export CATNAME="Percentages"
  ./catscripts/Categorize.sh
fi

rm Percentages.txt