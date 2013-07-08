#!/bin/bash

cat newpages.txt | egrep -iv "\bqui\b|\bquoi\b|\boù\b|\bquand\b|\bpourquoi\b|\bcomment\b|\best-ce\b|\bétait\b|\bquel\b|\bpeut-t\b|\bcombien\b|\bdurant\b|\bA |\bD'ou\b|\bD' ou\b|\bD ou\b|\bD oû\b|\bD'oû\b|\bDou \b|\boù\b|\bDans un\b|\bDans qu\b|\bQui est\b|\best-t\b|\best t\b|\best il\b|\best-il\b|\bcoment\b|\bcomment\b|\bcommen\b|\bcombien\b|\bQue\b|\bQu'\b|\bQuant\b" >> noninterrogative.txt

NONINT=`stat --print=%s noninterrogative.txt`

if [ $NONINT -ne 0 ];
then
  export CATFILE="noninterrogative.txt"
  export CATNAME="Titres de pages qui n'ont pas un mot interrogatif"
  $CATEGORIZE
fi

rm noninterrogative.txt
