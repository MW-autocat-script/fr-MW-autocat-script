#!/bin/bash

python $PYWIKIPEDIADIR/pagegenerators.py -category:"Page titles lacking an interrogative word" |sed s'|[0-9][0-9][0-9][0-9][0-9][0-9]: ||' |sed s'|[0-9][0-9][0-9][0-9][0-9]: ||' |sed s'|[0-9][0-9][0-9][0-9]: ||'  | sed s'| [0-9][0-9][0-9]: ||' | sed s'|  [0-9][0-9]: ||' | sed s'|   [0-9]: ||' > nonint.txt

egrep -i '\bqui\b' nonint.txt >> Qui.txt
egrep -i '\bquoi\b' nonint.txt >> Quoi.txt
egrep -i '\boù\b' nonint.txt >> Où.txt
egrep -i '\bquand\b' nonint.txt >> Quand.txt
egrep -i '\bpourquoi\b' nonint.txt >> Pourquoi.txt
egrep -i '\bcomment\b' nonint.txt >> Comment.txt
egrep -i '\best-ce\b' nonint.txt >> Est-ce.txt


QUI=`stat --print=%s Qui.txt`
QUOI=`stat --print=%s Quoi.txt`
OU=`stat --print=%s Où.txt` 
QUAND=`stat --print=%s Quand.txt`
POURQUOI=`stat --print=%s Pourquoi.txt`

if [ $QUI -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Qui.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $QUOI -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Quoi.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $OU -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Où.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $QUAND -ne 0 ];
then
   python $PYWIKIPEDIADIR/replace.py -file:Quand.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $POURQUOI -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Pourquoi.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi


rm Qui.txt
rm Quoi.txt
rm Où.txt
rm Quand.txt
rm Pourquoi.txt
