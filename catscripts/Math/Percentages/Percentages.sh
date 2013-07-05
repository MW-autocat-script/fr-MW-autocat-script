#!/bin/bash

egrep -i '[0-9]{1,} est combien de pour( |)cent(age|) [0-9]{1,}' newpages.txt >> Percentages.txt
egrep -i '\$[0-9]{1,} est combien de pour( |)cent(age|) \$[0-9]{1,}' newpages.txt >> Percentages.txt
egrep -i '\$[0-9]{1,}\.[0-9]{1,} est combien de pour( |)cent(age|) \$[0-9]{1,}\.[0-9]{1,}' newpages.txt >> Percentages.txt
egrep -i "^C('est) quoi [0-9]{1,}(| )% de [0-9]{1,}" newpages.txt >> Percentages.txt
egrep -i 'Combien de pour( |)cent(age|) est [0-9]{1,} de [0-9]{1,}' newpages.txt >> Percentages.txt


PERCENTAGES=`stat --print=%s Percentages.txt`

if [ $PERCENTAGES -ne 0 ];
then
  export CATFILE="Percentages.txt"
  export CATNAME="Pourcentages"
  $CATEGORIZE
fi

rm Percentages.txt
