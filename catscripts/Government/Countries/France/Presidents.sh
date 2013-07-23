#!/bin/bash

egrep -i 'France.+pr(e|é)sident|pr(e|é)sident.+France|Lois.+Napoléon(| )Bonaparte|Adolphe Thiers|Patrice de Mac-Mahon, duc de Magenta|Jules Grévy|Marie François Sadi Carnot|Jean Casimir-Perier|F(e|é)lix Faure|(É|E)mile Loubet|Armand Falli(è|e)res|Raymond Poincar(é|e)|Paul Deschanel|Alexandre Millerand|Gaston Doumergue|Paul Doumer|Albert Lebrun|Vincent Auriol|René Coty|Charles de Gaulle|Alain Poher|Georges Pompidou|Val(é|e)ry Giscard d'Estaing|Fran(ç|c)ois Mitterrand|Jacques Chirac|Nicolas Sarkozy|François Hollande' newpages.txt >> French presidents.txt

FRENCH PRESIDENTS=`stat --print=%s French presidents.txt`

if [ $FRANCE -ne 0 ];
then
  export CATFILE="French presidents.txt"
  export CATNAME="Présidents de la République française"
  $CATEGORIZE
fi

rm French presidents.txt
