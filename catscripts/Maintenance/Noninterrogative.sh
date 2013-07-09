#!/bin/bash

cat newpages.txt | egrep -iv "\bqui\b|\bquoi\b|\boù\b|\bquand\b|\bpourquoi\b|\bcomment\b|\best-ce\b|\bétait|\bquel\b|\bpeut-t|\bCombien\b|\bDurant\b|Dans un\b|Dans qu|Qui est|est-t|est il|que\b|qu'|\bQuant\b" >> noninterrogative.txt

NONINT=`stat --print=%s noninterrogative.txt`

if [ $NONINT -ne 0 ];
then
  export CATFILE="noninterrogative.txt"
  export CATNAME="Titres de pages qui n'ont pas un mot interrogatif"
  $CATEGORIZE
fi

rm noninterrogative.txt
