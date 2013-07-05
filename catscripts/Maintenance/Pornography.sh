#!/bin/bash

egrep -i 'porn|hentai|lolicon|futanari|sex.+vidéos|vidéos.+sex' newpages.txt >> Pornography.txt

PORN=`stat --print=%s Pornography.txt`

if [ $PORN -ne 0 ];
then
  export CATFILE="Pornography.txt"
  export CATNAME="Pornographie"
  $CATEGORIZE
fi

rm Pornography.txt
