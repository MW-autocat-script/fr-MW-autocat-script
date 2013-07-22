#!/bin/bash

egrep -i 'Japon\b' newpages.txt | egrep -iv 'Tokyo|Hiroshima|Kyoto|Nagasaki|Fukushima' >> Japan.txt
egrep -i 'Tokyo|Kyoto' newpages.txt >> Tokyo.txt
egrep -i 'Hiroshima' newpages.txt >> Hiroshima.txt
egrep -i 'Nagasaki' newpages.txt >> Nagasaki.txt
egrep -i 'Fukushima' newpages.txt >> Fukushima.txt

JAPAN=`stat --print=%s Japan.txt`
TOKYO=`stat --print=%s Tokyo.txt`
HIROSHIMA=`stat --print=%s Hiroshima.txt`
NAGASAKI=`stat --print=%s Nagasaki.txt`
FUKUSHIMA=`stat --print=%s Fukushima.txt`

if [ $JAPAN -ne 0 ];
then
  export CATFILE="Japan.txt"
  export CATNAME="Japon"
  $CATEGORIZE
fi

if [ $TOKYO -ne 0 ];
then
  export CATFILE="Tokyo.txt"
  export CATNAME="Tokyo"
  $CATEGORIZE
fi

if [ $HIROSHIMA -ne 0 ];
then
  export CATFILE="Hiroshima.txt"
  export CATNAME="Hiroshima"
  $CATEGORIZE
fi

if [ $NAGASAKI -ne 0 ];
then
  export CATFILE="Nagasaki.txt"
  export CATNAME="Nagasaki"
  $CATEGORIZE
fi

if [ $FUKUSHIMA -ne 0 ];
then
  export CATFILE="Fukushima.txt"
  export CATNAME="Fukushima"
  $CATEGORIZE
fi

rm Japan.txt
rm Tokyo.txt
rm Hiroshima.txt
rm Nagasaki.txt
rm Fukushima.txt
