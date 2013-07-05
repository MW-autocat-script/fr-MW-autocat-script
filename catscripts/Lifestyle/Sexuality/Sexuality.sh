#!/bin/bash

KEYWORDS_SEXUALITY="sexualit(é|er|e)|orientation sexuel(le|)|\bgay(|s)\b|lesbian(ne|)|bi(|-)sexuel(le|)|trans(-|)genre|pansexual|\bBDSM\b|fellatio|cunnilingus|anal(| )sex|vaginal(e|)(| )sex|omnisexual|sado-masochis(m|t)"
KEYWORDS_MASTURBATION="Masturbat(e|ion)"

egrep -i "$KEYWORDS_SEXUALITY" newpages.txt | egrep -iv "$KEYWORDS_MASTURBATION" >> Sexuality.txt
egrep -i "$KEYWORDS_MASTURBATION" newpages.txt >> Masturbation.txt

SEXUALITY=`stat --print=%s Sexuality.txt`
MASTURBATION=`stat --print=%s Masturbation.txt`

if [ $SEXUALITY -ne 0 ];
then
  export CATFILE="Sexuality.txt"
  export CATNAME="Sexualité"
  $CATEGORIZE
fi

if [ $MASTURBATION -ne 0 ];
then
  export CATFILE="Masturbation.txt"
  export CATNAME="Masturbation"
  $CATEGORIZE
fi

rm Sexuality.txt
rm Masturbation.txt
