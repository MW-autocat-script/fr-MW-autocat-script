#!/bin/bash

egrep -i 'Pennsylvani(a|e)|Pennsylvanni(a|e)|Pennnsylvani(a|e)|Pensylvani(a|e)|Pensylvanni(a|e)' newpages.txt | egrep -iv 'Pittsburgh|Philadelphia' >> Pennsylvania.txt
egrep -i 'Pittsburgh' newpages.txt | egrep -iv "Steelers|Penguins|Pirates" >> Pittsburgh.txt  
egrep -i 'Philadelphi(a|e)' newpages.txt | egrep -iv 'Eagles' >> Philadelphia.txt

PENNSYLVANIA=`stat --print=%s Pennsylvania.txt`
PITTSBURGH=`stat --print=%s Pittsburgh.txt`
PHILADELPHIA=`stat --print=%s Philadelphia.txt`

if [ $PENNSYLVANIA -ne 0 ];
then
  export CATFILE="Pennsylvania.txt"
  export CATNAME="Pennsylvanie"
  $CATEGORIZE
fi

if [ $PITTSBURGH -ne 0 ];
then
  export CATFILE="Pittsburgh.txt"
  export CATNAME="Pittsburgh"
  $CATEGORIZE
fi

if [ $PHILADELPHIA -ne 0 ];
then
  export CATFILE="Philadelphia.txt"
  export CATNAME="Philadelphie"
  $CATEGORIZE
fi

rm Pittsburgh.txt
rm Pennsylvania.txt
rm Philadelphia.txt
