#!/bin/bash
#Warning - the regex \bpi\b will fail on words with non-ASCII characters, such as piñata
egrep -i '(|plane) g(é|e)om(é|e)trie|polygone|angle (obstu|acute|droit|rectagle)|isoscèle|équilatérale|triangle|carré(e|)\b|rectangle|trapezoïd|pentagone|tor(us|oid)|rhomb(us|oid)|hexagone|sexagone|septagone|octagone|nonagone|(|do)decagone|dodecahedrone|AAA postulate|SAS postulate|pythagorean theorem|\bpi |\bpi\]\]|π|Euclid' newpages.txt | egrep -iv "punnett|root| inc(|\.)\b|squaresoft|carré(e|) cupique|bermuda triangle|Square Enix|town square|St\. .+ Square|Trafalgar Square|Raspberry Pi|Parliament Square|Red Square|Tiananmen Square|square danc(e|ing)|St\. Mark's Square|piñata|square deal|chess|Rune(| )Scape" | egrep -v 'Pentagon' >> Geometry.txt

GEOMETRY=`stat --print=%s Geometry.txt`

if [ $GEOMETRY -ne 0 ];
then
  export CATFILE="Geometry.txt"
  export CATNAME="Géométrie"
  $CATEGORIZE
fi

rm Geometry.txt
