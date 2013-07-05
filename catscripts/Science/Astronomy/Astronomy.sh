#!/bin/bash

CURRENTDIR="./catscripts/Science/Astronomy"

$CURRENTDIR/Dwarf_planets/Dwarfplanets.sh
$CURRENTDIR/Planets/Planets.sh
$CURRENTDIR/Moon/Moon.sh

egrep -i 'Asteroid|Ast(é|e)ro(ï|i)de' newpages.txt | egrep -iv 'download|game|jeux' >> Asteroids.txt

ASTEROIDS=`stat --print=%s Asteroids.txt`

if [ $ASTEROIDS -ne 0 ];
then
  export CATFILE="Asteroids.txt"
  export CATNAME="Astéroïdes"
  $CATEGORIZE
fi

rm Asteroids.txt
