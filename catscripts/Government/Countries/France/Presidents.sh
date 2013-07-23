#!/bin/bash

egrep -i 'France.+pr(e|é)sident|pr(e|é)sident.+France|Louis.+Napoléon(| )Bonaparte|Adolphe Thiers|Patrice de Mac-Mahon|duc de Magenta|Jules Grévy|Marie François Sadi Carnot|Jean Casimir-Perier|F(e|é)lix Faure|(É|E)mile Loubet|Armand Falli(è|e)res|Raymond Poincar(é|e)|Paul Deschanel|Alexandre Millerand|Gaston Doumergue|Paul Doumer|Albert Lebrun|Vincent Auriol|René Coty|Charles de Gaulle|Alain Poher|Georges Pompidou|Val(é|e)ry Giscard d''Estaing|Fran(ç|c)ois Mitterrand|Jacques Chirac|Nicolas Sarkozy|Fran(ç|c)ois Hollande' newpages.txt >> FrenchPresidents.txt

FRENCH_PRESIDENTS=`stat --print=%s FrenchPresidents.txt`

if [ $FRENCH_PRESIDENTS -ne 0 ];
then
  export CATFILE="FrenchPresidents.txt"
  export CATNAME="Présidents de la République française"
  $CATEGORIZE
fi

rm FrenchPresidents.txt
