#!/bin/bash

egrep -i 'étymologie' newpages.txt >> Etymology.txt
egrep -i 'Où est-ce que (le|la) (mot|phrase) .+ (viens|vient|vien) de' newpages.txt >> Etymology.txt
egrep -i 'origine du mot [a-z]{1,}' newpages.txt >> Etymology.txt
egrep -i 'Où est-ce que (le|la) (sur|)nom [a-z]{1,} (viens|vient|vien) de' newpages.txt >> NameOrigins.txt

ETYMOLOGY=`stat --print=%s Etymology.txt`
ORIGINS=`stat --print=%s NameOrigins.txt`

if [ $ETYMOLOGY -ne 0 ];
then
  export CATFILE="Etymology.txt"
  export CATNAME="Étymologie"
  $CATEGORIZE
fi

if [ $ORIGINS -ne 0 ];
then
  export CATFILE="NameOrigins.txt"
  export CATNAME="Origines de noms"
  $CATEGORIZE
fi

rm Etymology.txt
rm NameOrigins.txt
