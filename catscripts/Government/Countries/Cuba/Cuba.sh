#!/bin/bash

egrep -i '\bCuba|Fidel Castro|Ra(u|ú)l Castro|Havan(a|e)|Che Guevara' newpages.txt >> Cuba.txt

CUBA=`stat --print=%s Cuba.txt`

if [ $CUBA -ne 0 ];
then
  export CATFILE="Cuba.txt"
  export CATNAME="Cuba"
  $CATEGORIZE
fi

rm Cuba.txt
