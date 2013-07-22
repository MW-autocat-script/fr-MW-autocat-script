#!/bin/bash

egrep -i 'France' newpages.txt | egrep -iv 'Paris|Tour Eiffel' >> France.txt
egrep -i '\bParis\b|Tour Eiffel' newpages.txt | egrep -iv 'Plâtre de Paris|Tom Paris|Paris Hilton|Romeo|Juliet|From Paris with Love|Minuit à Paris|Un monstre à Paris' >> Paris.txt #Tom Paris is a fictional character on Star Trek: Voyager

FRANCE=`stat --print=%s France.txt`
PARIS=`stat --print=%s Paris.txt`

if [ $FRANCE -ne 0 ];
then
  export CATFILE="France.txt"
  export CATNAME="France"
  $CATEGORIZE
fi

if [ $PARIS -ne 0 ];
then
  export CATFILE="Paris.txt"
  export CATNAME="Paris"
  $CATEGORIZE
fi

rm France.txt
rm Paris.txt
