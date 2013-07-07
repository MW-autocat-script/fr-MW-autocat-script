#!/bin/bash

egrep -i "Harry(| )Potter|Hermione|Ron(| )Weasley|Dumbledore|Rogue|Voldemort|Hagrid|Remus(| )Lupin|Sirius(| )Black|Peter(| )Pettigrew|Poudlard|Quidditch|Pierre philosophale|reliques(| )mort|coupe(| )de(| )feu|chambre(| )des(| )secrets|Azkaban|Ordre(| )du(| )Phénix|Prince(| )de(| )sang(|-)(| )mêlé|\bMoldu|Sang(|-)de(|-)Bourbe|Pensine|Horcruxe|Baguette de Sureau" newpages.txt >> HarryPotter.txt

HARRYPOTTER=`stat --print=%s HarryPotter.txt`

if [ $HARRYPOTTER -ne 0 ];
then
  export CATFILE="HarryPotter.txt"
  export CATNAME="Harry Potter"
  $CATEGORIZE
fi

rm HarryPotter.txt
