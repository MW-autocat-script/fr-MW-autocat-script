#!/bin/bash

egrep -i '\bUAE|\bU\.A\.E|Émirats arabes unis' newpages.txt | egrep -iv 'Dubai' >> UAE.txt
egrep -i 'Duba(i|ï)' newpages.txt >> Dubai.txt

UAE=`stat --print=%s UAE.txt`
DUBAI=`stat --print=%s Dubai.txt`

if [ $UAE -ne 0 ];
then
  export CATFILE="UAE.txt"
  export CATNAME="Émirats arabes unis"
  $CATEGORIZE
fi

if [ $DUBAI -ne 0 ];
then
  export CATFILE="Dubai.txt"
  export CATNAME="Dubaï"
  $CATEGORIZE
fi

rm UAE.txt
rm Dubai.txt
