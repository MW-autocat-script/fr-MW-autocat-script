#!/bin/bash

egrep -i 'Canada|Toronto|Qu(é|e)bec' newpages.txt | egrep -iv 'ginger(| )ale|Canada Dry' >> Canada.txt

CANADA=`stat --print=%s Canada.txt`

if [ $CANADA -ne 0 ];
then
  export CATFILE="Canada.txt"
  export CATNAME="Canada"
  $CATEGORIZE
fi

rm Canada.txt
