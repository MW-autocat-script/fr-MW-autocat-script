#!/bin/bash

egrep -i 'Cambodge|Khmer Rouge|Phnom Penh' newpages.txt >> Cambodia.txt

CAMBODIA=`stat --print=%s Cambodia.txt`

if [ $CAMBODIA -ne 0 ];
then
  export CATFILE="Cambodia.txt"
  export CATNAME="Cambodge"
  $CATEGORIZE
fi

rm Cambodia.txt
