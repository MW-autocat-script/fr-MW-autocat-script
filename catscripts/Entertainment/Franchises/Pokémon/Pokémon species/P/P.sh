#!/bin/bash

cat newpages.txt | egrep -i 'Pachirisu' >> Pachirisu.txt
cat newpages.txt | egrep -i 'Palkia' >> Palkia.txt
cat newpages.txt | egrep -i 'Palpitoad' >> Palpitoad.txt
cat newpages.txt | egrep -i 'Panpour' >> Panpour.txt
cat newpages.txt | egrep -i 'Pansage' >> Pansage.txt
cat newpages.txt | egrep -i 'Pansear' >> Pansear.txt
cat newpages.txt | egrep -i 'Paras\b' >> Paras.txt
cat newpages.txt | egrep -i 'Parasect' >> Parasect.txt
cat newpages.txt | egrep -i 'Patrat' >> Patrat.txt
cat newpages.txt | egrep -i 'Pawniard' >> Pawniard.txt
cat newpages.txt | egrep -i 'Pelipper' >> Pelipper.txt
cat newpages.txt | egrep -i 'Persian\b' | egrep -iv 'empire|language|speak|cat|kitten' >> Persian.txt
cat newpages.txt | egrep -i 'Petilil' >> Petilil.txt
cat newpages.txt | egrep -i 'Phanpy' >> Phanpy.txt
cat newpages.txt | egrep -i 'Phione' >> Phione.txt
cat newpages.txt | egrep -i 'Pichu' >> Pichu.txt
cat newpages.txt | egrep -i 'Pidgeot' >> Pidgeot.txt
cat newpages.txt | egrep -i 'Pidgeotto' >> Pidgeotto.txt
cat newpages.txt | egrep -i 'Pidgey' >> Pidgey.txt
cat newpages.txt | egrep -i 'Pignite' >> Pignite.txt
cat newpages.txt | egrep -i 'Pikachu' >> Pikachu.txt
cat newpages.txt | egrep -i 'Piloswine' >> Piloswine.txt
cat newpages.txt | egrep -i 'Pineco' >> Pineco.txt
cat newpages.txt | egrep -i 'Pinsir' >> Pinsir.txt
cat newpages.txt | egrep -i 'Piplup' >> Piplup.txt
cat newpages.txt | egrep -i 'Plusle' >> Plusle.txt
cat newpages.txt | egrep -i 'Politoed' >> Politoed.txt
cat newpages.txt | egrep -i 'Poliwag' >> Poliwag.txt
cat newpages.txt | egrep -i 'Poliwhirl' >> Poliwhirl.txt
cat newpages.txt | egrep -i 'Poliwrath' >> Poliwrath.txt
cat newpages.txt | egrep -i 'Ponyta' >> Ponyta.txt
cat newpages.txt | egrep -i 'Poochyena' >> Poochyena.txt
cat newpages.txt | egrep -i 'Porygon' >> Porygon.txt
cat newpages.txt | egrep -i 'Porygon-Z' >> Porygon-Z.txt
cat newpages.txt | egrep -i 'Porygon2' >> Porygon2.txt
cat newpages.txt | egrep -i 'Primeape' >> Primeape.txt
cat newpages.txt | egrep -i 'Prinplup' >> Prinplup.txt
cat newpages.txt | egrep -i 'Probopass' >> Probopass.txt
cat newpages.txt | egrep -i 'Psyduck' >> Psyduck.txt
cat newpages.txt | egrep -i 'Pupitar' >> Pupitar.txt
cat newpages.txt | egrep -i 'Purrloin' >> Purrloin.txt
cat newpages.txt | egrep -i 'Purugly' >> Purugly.txt

Pachirisu=`stat --print=%s Pachirisu.txt`
Palkia=`stat --print=%s Palkia.txt`
Palpitoad=`stat --print=%s Palpitoad.txt`
Panpour=`stat --print=%s Panpour.txt`
Pansage=`stat --print=%s Pansage.txt`
Pansear=`stat --print=%s Pansear.txt`
Paras=`stat --print=%s Paras.txt`
Parasect=`stat --print=%s Parasect.txt`
Patrat=`stat --print=%s Patrat.txt`
Pawniard=`stat --print=%s Pawniard.txt`
Pelipper=`stat --print=%s Pelipper.txt`
Persian=`stat --print=%s Persian.txt`
Petilil=`stat --print=%s Petilil.txt`
Phanpy=`stat --print=%s Phanpy.txt`
Phione=`stat --print=%s Phione.txt`
Pichu=`stat --print=%s Pichu.txt`
Pidgeot=`stat --print=%s Pidgeot.txt`
Pidgeotto=`stat --print=%s Pidgeotto.txt`
Pidgey=`stat --print=%s Pidgey.txt`
Pignite=`stat --print=%s Pignite.txt`
Pikachu=`stat --print=%s Pikachu.txt`
Piloswine=`stat --print=%s Piloswine.txt`
Pineco=`stat --print=%s Pineco.txt`
Pinsir=`stat --print=%s Pinsir.txt`
Piplup=`stat --print=%s Piplup.txt`
Plusle=`stat --print=%s Plusle.txt`
Politoed=`stat --print=%s Politoed.txt`
Poliwag=`stat --print=%s Poliwag.txt`
Poliwhirl=`stat --print=%s Poliwhirl.txt`
Poliwrath=`stat --print=%s Poliwrath.txt`
Ponyta=`stat --print=%s Ponyta.txt`
Poochyena=`stat --print=%s Poochyena.txt`
Porygon=`stat --print=%s Porygon.txt`
PorygonZ=`stat --print=%s Porygon-Z.txt`
Porygon2=`stat --print=%s Porygon2.txt`
Primeape=`stat --print=%s Primeape.txt`
Prinplup=`stat --print=%s Prinplup.txt`
Probopass=`stat --print=%s Probopass.txt`
Psyduck=`stat --print=%s Psyduck.txt`
Pupitar=`stat --print=%s Pupitar.txt`
Purrloin=`stat --print=%s Purrloin.txt`
Purugly=`stat --print=%s Purugly.txt`

if [ $Pachirisu -ne 0 ];
then
  export CATFILE="Pachirisu.txt"
  export CATNAME="Pachirisu"
  ./catscripts/Categorize.sh
fi

if [ $Palkia -ne 0 ];
then
  export CATFILE="Palkia.txt"
  export CATNAME="Palkia"
  ./catscripts/Categorize.sh
fi

if [ $Palpitoad -ne 0 ];
then
  export CATFILE="Palpitoad.txt"
  export CATNAME="Palpitoad"
  ./catscripts/Categorize.sh
fi

if [ $Panpour -ne 0 ];
then
  export CATFILE="Panpour.txt"
  export CATNAME="Panpour"
  ./catscripts/Categorize.sh
fi

if [ $Pansage -ne 0 ];
then
  export CATFILE="Pansage.txt"
  export CATNAME="Pansage"
  ./catscripts/Categorize.sh
fi

if [ $Pansear -ne 0 ];
then
  export CATFILE="Pansear.txt"
  export CATNAME="Pansear"
  ./catscripts/Categorize.sh
fi

if [ $Paras -ne 0 ];
then
  export CATFILE="Paras.txt"
  export CATNAME="Paras"
  ./catscripts/Categorize.sh
fi

if [ $Parasect -ne 0 ];
then
  export CATFILE="Parasect.txt"
  export CATNAME="Parasect"
  ./catscripts/Categorize.sh
fi

if [ $Patrat -ne 0 ];
then
  export CATFILE="Patrat.txt"
  export CATNAME="Patrat"
  ./catscripts/Categorize.sh
fi

if [ $Pawniard -ne 0 ];
then
  export CATFILE="Pawniard.txt"
  export CATNAME="Pawniard"
  ./catscripts/Categorize.sh
fi

if [ $Pelipper -ne 0 ];
then
  export CATFILE="Pelipper.txt"
  export CATNAME="Pelipper"
  ./catscripts/Categorize.sh
fi

if [ $Persian -ne 0 ];
then
  export CATFILE="Persian.txt"
  export CATNAME="Persian"
  ./catscripts/Categorize.sh
fi

if [ $Petilil -ne 0 ];
then
  export CATFILE="Petilil.txt"
  export CATNAME="Petilil"
  ./catscripts/Categorize.sh
fi

if [ $Phanpy -ne 0 ];
then
  export CATFILE="Phanpy.txt"
  export CATNAME="Phanpy"
  ./catscripts/Categorize.sh
fi

if [ $Phione -ne 0 ];
then
  export CATFILE="Phione.txt"
  export CATNAME="Phione"
  ./catscripts/Categorize.sh
fi

if [ $Pichu -ne 0 ];
then
  export CATFILE="Pichu.txt"
  export CATNAME="Pichu"
  ./catscripts/Categorize.sh
fi

if [ $Pidgeot -ne 0 ];
then
  export CATFILE="Pidgeot.txt"
  export CATNAME="Pidgeot"
  ./catscripts/Categorize.sh
fi

if [ $Pidgeotto -ne 0 ];
then
  export CATFILE="Pidgeotto.txt"
  export CATNAME="Pidgeotto"
  ./catscripts/Categorize.sh
fi

if [ $Pidgey -ne 0 ];
then
  export CATFILE="Pidgey.txt"
  export CATNAME="Pidgey"
  ./catscripts/Categorize.sh
fi

if [ $Pignite -ne 0 ];
then
  export CATFILE="Pignite.txt"
  export CATNAME="Pignite"
  ./catscripts/Categorize.sh
fi

if [ $Pikachu -ne 0 ];
then
  export CATFILE="Pikachu.txt"
  export CATNAME="Pikachu"
  ./catscripts/Categorize.sh
fi

if [ $Piloswine -ne 0 ];
then
  export CATFILE="Piloswine.txt"
  export CATNAME="Piloswine"
  ./catscripts/Categorize.sh
fi

if [ $Pineco -ne 0 ];
then
  export CATFILE="Pineco.txt"
  export CATNAME="Pineco"
  ./catscripts/Categorize.sh
fi

if [ $Pinsir -ne 0 ];
then
  export CATFILE="Pinsir.txt"
  export CATNAME="Pinsir"
  ./catscripts/Categorize.sh
fi

if [ $Piplup -ne 0 ];
then
  export CATFILE="Piplup.txt"
  export CATNAME="Piplup"
  ./catscripts/Categorize.sh
fi

if [ $Plusle -ne 0 ];
then
  export CATFILE="Plusle.txt"
  export CATNAME="Plusle"
  ./catscripts/Categorize.sh
fi

if [ $Politoed -ne 0 ];
then
  export CATFILE="Politoed.txt"
  export CATNAME="Politoed"
  ./catscripts/Categorize.sh
fi

if [ $Poliwag -ne 0 ];
then
  export CATFILE="Poliwag.txt"
  export CATNAME="Poliwag"
  ./catscripts/Categorize.sh
fi

if [ $Poliwhirl -ne 0 ];
then
  export CATFILE="Poliwhirl.txt"
  export CATNAME="Poliwhirl"
  ./catscripts/Categorize.sh
fi

if [ $Poliwrath -ne 0 ];
then
  export CATFILE="Poliwrath.txt"
  export CATNAME="Poliwrath"
  ./catscripts/Categorize.sh
fi

if [ $Ponyta -ne 0 ];
then
  export CATFILE="Ponyta.txt"
  export CATNAME="Ponyta"
  ./catscripts/Categorize.sh
fi

if [ $Poochyena -ne 0 ];
then
  export CATFILE="Poochyena.txt"
  export CATNAME="Poochyena"
  ./catscripts/Categorize.sh
fi

if [ $Porygon -ne 0 ];
then
  export CATFILE="Porygon.txt"
  export CATNAME="Porygon"
  ./catscripts/Categorize.sh
fi

if [ $PorygonZ -ne 0 ];
then
  export CATFILE="Porygon-Z.txt"
  export CATNAME="Porygon-Z"
  ./catscripts/Categorize.sh
fi

if [ $Porygon2 -ne 0 ];
then
  export CATFILE="Porygon2.txt"
  export CATNAME="Porygon2"
  ./catscripts/Categorize.sh
fi

if [ $Primeape -ne 0 ];
then
  export CATFILE="Primeape.txt"
  export CATNAME="Primeape"
  ./catscripts/Categorize.sh
fi

if [ $Prinplup -ne 0 ];
then
  export CATFILE="Prinplup.txt"
  export CATNAME="Prinplup"
  ./catscripts/Categorize.sh
fi

if [ $Probopass -ne 0 ];
then
  export CATFILE="Probopass.txt"
  export CATNAME="Probopass"
  ./catscripts/Categorize.sh
fi

if [ $Psyduck -ne 0 ];
then
  export CATFILE="Psyduck.txt"
  export CATNAME="Psyduck"
  ./catscripts/Categorize.sh
fi

if [ $Pupitar -ne 0 ];
then
  export CATFILE="Pupitar.txt"
  export CATNAME="Pupitar"
  ./catscripts/Categorize.sh
fi

if [ $Purrloin -ne 0 ];
then
  export CATFILE="Purrloin.txt"
  export CATNAME="Purrloin"
  ./catscripts/Categorize.sh
fi

if [ $Purugly -ne 0 ];
then
  export CATFILE="Purugly.txt"
  export CATNAME="Purugly"
  ./catscripts/Categorize.sh
fi


rm Pachirisu.txt
rm Palkia.txt
rm Palpitoad.txt
rm Panpour.txt
rm Pansage.txt
rm Pansear.txt
rm Paras.txt
rm Parasect.txt
rm Patrat.txt
rm Pawniard.txt
rm Pelipper.txt
rm Persian.txt
rm Petilil.txt
rm Phanpy.txt
rm Phione.txt
rm Pichu.txt
rm Pidgeot.txt
rm Pidgeotto.txt
rm Pidgey.txt
rm Pignite.txt
rm Pikachu.txt
rm Piloswine.txt
rm Pineco.txt
rm Pinsir.txt
rm Piplup.txt
rm Plusle.txt
rm Politoed.txt
rm Poliwag.txt
rm Poliwhirl.txt
rm Poliwrath.txt
rm Ponyta.txt
rm Poochyena.txt
rm Porygon.txt
rm Porygon-Z.txt
rm Porygon2.txt
rm Primeape.txt
rm Prinplup.txt
rm Probopass.txt
rm Psyduck.txt
rm Pupitar.txt
rm Purrloin.txt
rm Purugly.txt