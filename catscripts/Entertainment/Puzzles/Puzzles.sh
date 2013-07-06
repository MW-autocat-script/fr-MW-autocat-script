#!/bin/bash

egrep -i 'Sudoku' newpages.txt >> Sudoku.txt
egrep -i 'Mots croisés' newpages.txt >> Crossword.txt
egrep -i 'Mot (de|en) [0-9]{1,}( |-)lettre(s) pour' newpages.txt >> Crossword.txt
egrep -i 'Mot (de|en) (trois|quatre|cinq|six|sept|huit|neuf|dix|onze|douze|treize|quatorze|quinze|seize|dix( |-)sept|dix( |-)huit|dix( |-)neuf|vingt)( |-) lettres pour' newpages.txt >> Crossword.txt

SUDOKU=`stat --print=%s Sudoku.txt`
CROSSWORD=`stat --print=%s Crossword.txt`

if [ $SUDOKU -ne 0 ];
then
  export CATFILE="Sudoku.txt"
  export CATNAME="Sudoku"
  $CATEGORIZE
fi

if [ $CROSSWORD -ne 0 ];
then
  export CATFILE="Crossword.txt"
  export CATNAME="Mots croisés"
  $CATEGORIZE
fi

rm Sudoku.txt
rm Crossword.txt
