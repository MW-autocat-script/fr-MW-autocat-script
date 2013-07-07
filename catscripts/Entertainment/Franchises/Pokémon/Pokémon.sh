#!/bin/bash

CURRENTDIR="./catscripts/Entertainment/Franchises/Pokémon"

. $CURRENTDIR/Pokémon_species/PokémonSpecies.sh


egrep -i "(Pokémon|Pokemon|Poke'mon)" newpages.txt | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Red" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Blue" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Yellow" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Gold" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Silver" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Crystal" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Ruby" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Sapphire" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Emerald" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Fire(| )Red" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Leaf(| )Green" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )mystery dungeon.+red rescue team" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )mystery dungeon.+blue rescue team" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )mystery dungeon.+explorers of (sky|time|darkness)" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Black" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )White" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )(dimond|Diamond)" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )(perl|Pearl)" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )(Platinum|Platnum|Platnium)" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Heart(| )Gold" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Soul(| )Silver" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )(X\b|Y\b)" | egrep -iv "Shadow(|s) of (Almia|Amlia)" | egrep -iv "Guardian(| )Signs" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Ranger" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )XD" | egrep -iv "Gale of Darkness" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Indigo" | egrep -iv "Unova(| )RPG" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )Deluge" | egrep -iv "Deluge(| )RPG" | egrep -iv "(Pokémon|Pokemon|Poke'mon)(| )(Crater|Vortex|Vortex Battle Arena)" | egrep -iv "$KEYWORDS_POKEMON_SPECIES" | egrep -iv 'anime|\bAsh\b|episode' >> Pokemon.txt

POKEMON=`stat --print=%s Pokemon.txt`

if [ $POKEMON -ne 0 ];
then
  export CATFILE="Pokemon.txt"
  export CATNAME="Pokémon"
  $CATEGORIZE
fi



rm Pokemon.txt
