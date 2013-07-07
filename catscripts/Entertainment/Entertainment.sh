#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Entertainment\n" 
fi

CURRENTDIR="./catscripts/Entertainment"

$CURRENTDIR/Acteurs_et_actrices/Acteurs.sh # Actors and actresses
$CURRENTDIR/Jeux_de_sociétés/Jeux_de_sociétés.sh #Board games
$CURRENTDIR/Video_games/VideoGames.sh
$CURRENTDIR/Franchises/Franchises.sh
$CURRENTDIR/Cartoons/Cartoons.sh
$CURRENTDIR/Music/Music.sh
$CURRENTDIR/Movies/Movies.sh
$CURRENTDIR/Puzzles/Puzzles.sh
$CURRENTDIR/Television_series/Televisionseries.sh

if [ "$DEBUG" == "yes" ];
then
  printf "Finished Entertainment\n" 
fi