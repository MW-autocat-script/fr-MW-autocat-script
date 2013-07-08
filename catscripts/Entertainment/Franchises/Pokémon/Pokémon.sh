#!/bin/bash

CURRENTDIR="./catscripts/Entertainment/Franchises/Pokémon"

. $CURRENTDIR/Pokémon_species/PokémonSpecies.sh


egrep -i "Pok(e|é)mon" newpages.txt | egrep -iv "Pok(e|é)mon(| )(|version)(| )Rouge" | egrep -iv "Pok(e|é)mon(| )(|version)(| )Bleu" | egrep -iv "Pok(e|é)mon(| )(|version)(| )Jaune" | egrep -iv "Pok(e|é)mon(| )(|version)(| )Or" | egrep -iv "Pok(e|é)mon(| )(|version)(| )Argent" | egrep -iv "Pok(e|é)mon(| )(|version)(| )cristal" | egrep -iv "Pok(e|é)mon(| )(|version)(| )Rubis" | egrep -iv "Pok(e|é)mon(| )(|version)(| )Saphir" | egrep -iv "Pok(e|é)mon(| )(|version)(| )(E|É)meraude" | egrep -iv "Pok(e|é)mon(| )(|version)(| )Rouge(| )Feu" | egrep -iv "Pok(e|é)mon(| )(|version)(| )Vert(| )Feuille" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )mystery dungeon.+red rescue team" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )mystery dungeon.+blue rescue team" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )mystery dungeon.+explorers of (sky|time|darkness)" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Black" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )White" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )(dimond|Diamond)" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )(perl|Pearl)" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )(Platinum|Platnum|Platnium)" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Heart(| )Gold" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Soul(| )Silver" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )(X\b|Y\b)" | egrep -iv "Shadow(|s) of (Almia|Amlia)" | egrep -iv "Guardian(| )Signs" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Ranger" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )XD" | egrep -iv "Gale of Darkness" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Indigo" | egrep -iv "Unova(| )RPG" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Deluge" | egrep -iv "Deluge(| )RPG" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )(Crater|Vortex|Vortex Battle Arena)" | egrep -iv "$KEYWORDS_POKEMON_SPECIES" | egrep -iv 'anime|\bAsh\b|episode' >> Pokemon.txt

POKEMON=`stat --print=%s Pokemon.txt`

if [ $POKEMON -ne 0 ];
then
  export CATFILE="Pokemon.txt"
  export CATNAME="Pokémon"
  $CATEGORIZE
fi



rm Pokemon.txt
