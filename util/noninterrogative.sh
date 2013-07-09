#!/bin/bash

python $PYWIKIPEDIADIR/pagegenerators.py -category:"Titres de pages qui n'ont pas un mot interrogatif" |sed s'|[0-9][0-9][0-9][0-9][0-9][0-9]: ||' |sed s'|[0-9][0-9][0-9][0-9][0-9]: ||' |sed s'|[0-9][0-9][0-9][0-9]: ||'  | sed s'| [0-9][0-9][0-9]: ||' | sed s'|  [0-9][0-9]: ||' | sed s'|   [0-9]: ||' > nonint.txt

egrep -i "\bqui\b" nonint.txt >> Qui.txt
egrep -i "\bquoi\b" nonint.txt >> Quoi.txt
egrep -i "\boù\b" nonint.txt >> Où.txt
egrep -i "\bquand\b" nonint.txt >> Quand.txt
egrep -i "\bpourquoi\b" nonint.txt >> Pourquoi.txt
egrep -i "\bcomment\b" nonint.txt >> Comment.txt
egrep -i "\best-ce\b" nonint.txt >> Est-ce.txt
egrep -i "\bétait\b" nonint.txt >> Était.txt
egrep -i "\bquel\b" nonint.txt >> Quel.txt
egrep -i "\bpeut-t\b" nonint.txt >> Peut-t.txt
egrep -i "\bCombien\b" nonint.txt >> Combien.txt
egrep -i "\bDurant\b" nonint.txt >> Durant.txt
egrep -i "Dans un\b" nonint.txt >> Dansun.txt
egrep -i "Dans qu" nonint.txt >> Dansqu.txt
egrep -i "Qui est" nonint.txt >> Quiest.txt
egrep -i "est-t" nonint.txt >> Estt.txt
egrep -i "est il" nonint.txt >> Estil.txt


QUI=`stat --print=%s Qui.txt`
QUOI=`stat --print=%s Quoi.txt`
OU=`stat --print=%s Où.txt` 
QUAND=`stat --print=%s Quand.txt`
POURQUOI=`stat --print=%s Pourquoi.txt`
COMMENT=`stat --print=%s Comment.txt`
ESTCE=`stat --print=%s Est-ce.txt`
ETAIT=`stat --print=%s Était.txt`
QUEL=`stat --print=%s Quel.txt`
PEUTT=`stat --print=%s Peut-t.txt`
COMBIEN=`stat --print=%s Combien.txt`
DURANT=`stat --print=%s Durant.txt`
DANSUN=`stat --print=%s Dansun.txt`
DANSQU=`stat --print=%s Dansqu.txt`
QUIEST=`stat --print=%s Quiest.txt`
ESTT=`stat --print=%s Estt.txt`
ESTIL=`stat --print=%s Estil.txt`



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

if [ $COMMENT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Comment.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $ESTCE -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Est-ce.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $ETAIT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Était.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $QUEL -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Quel.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $PEUTT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Peut-t.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $COMBIEN -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Combien.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $DURANT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Durant.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $DANSUN -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Dansun.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi


if [ $DANSQU -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Dansqu.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $QUIEST -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Quiest.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $ESTT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Estt.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

if [ $ESTIL -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Estil.txt -regex "\[\[[cC]atégorie:Titres de pages qui n'ont pas un mot interrogatif\]\]" "" -pt:1 -summary:"Insert French message here" -always
fi

rm Qui.txt
rm Quoi.txt
rm Où.txt
rm Quand.txt
rm Pourquoi.txt
rm Comment.txt
rm Est-ce.txt
rm Était.txt
rm Quel.txt
rm Peut-t.txt
rm Combien.txt
rm Durant.txt
rm Dansun.txt
rm Dansqu.txt
rm Quiest.txt
rm Estt.txt
rm Estil.txt
