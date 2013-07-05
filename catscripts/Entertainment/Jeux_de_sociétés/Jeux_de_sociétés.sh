#!/bin/bash


KEYWORDS_CHECKERS="jeu(| )de(| )dames"
KEYWORDS_CHESS="(|jeu)(| )d(|')(| )(e|é)checs|(E|É)chiquier"
KEYWORDS_BOARDGAMES="Jeux(| )de(| )soci(e|é)t(e|é)s"


egrep -i "$KEYWORDS_BOARDGAMES" newpages.txt | egrep -iv "$KEYWORDS_CHESS|$KEYWORDS_CHECKERS" >> Boardgames.txt
egrep -i "$KEYWORDS_CHESS" newpages.txt >> Chess.txt 
egrep -i "$KEYWORDS_CHECKERS" newpages.txt >> Checkers.txt

BOARDGAMES=`stat --print=%s Boardgames.txt`
CHESS=`stat --print=%s Chess.txt`
CHECKERS=`stat --print=%s Checkers.txt`

if [ $BOARDGAMES -ne 0 ];
then
  export CATFILE="Boardgames.txt"
  export CATNAME="Jeux de sociétés"
  $CATEGORIZE
fi

if [ $CHESS -ne 0 ];
then
  export CATFILE="Chess.txt"
  export CATNAME="Jeu d'échecs"
  $CATEGORIZE
fi

if [ $CHECKERS -ne 0 ];
then
  export CATFILE="Checkers.txt"
  export CATNAME="Jeu de dames"
  $CATEGORIZE
fi

rm Boardgames.txt
rm Chess.txt
rm Checkers.txt
  