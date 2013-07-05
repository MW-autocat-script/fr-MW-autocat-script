#!/bin/bash

egrep -iv "\bqui(|s)\b" newpages.txt| egrep -iv "\bquoi" | egrep -iv "\boù\b" | egrep -iv "\wbquand\b" | egrep -iv "(^|\[\[|(\.|,) )Quand\b" | egrep -iv "\bpourquoi" | egrep -iv "\bcomment\b" | egrep -iv "(^|\[\[|(\.|,) )Est(-|)(| )ce(-|)(| )qu" | egrep -iv "\bfait\b" | egrep -iv "(^|\[\[|(\.|,) )Est(-| |)t(-| |)(il|elle)\b" | egrep -iv "(^|\[\[|(\.|,) )(é|e)tai(t|s)(-| |)t(-| |)(il|elle)\b" | egrep -iv '(^|\[\[|(\.|,) )(é|e)tai(t|s)\b' | egrep -iv "(^|\[\[|(\.|,) )quel(le|)\b" | egrep -iv "(^|\[\[|(\.|,) )devrai" | egrep -iv "(^|\[\[|(\.|,) )ne devrait pas" | egrep -iv "(^|\[\[|(\.|,) )voudrai(t|s|ent)" | egrep -iv "(^|\[\[|\. |, )peu(t|s)\b" | egrep -iv "\bsuis(-| |)je\b" | egrep -iv "(^|\[\[|(\.|,) )avoir\b" | egrep -iv "(^|\[\[|(\.|,) )est" | egrep -iv "(^|\[\[|(\.|,) )(n'|n )est(-| |)(c|s)e\b" >> noninterrogative.txt

NONINT=`stat --print=%s noninterrogative.txt`

if [ $NONINT -ne 0 ];
then
  export CATFILE="noninterrogative.txt"
  export CATNAME="Titres de pages qui n'ont pas un mot interrogatif"
  $CATEGORIZE
fi

rm noninterrogative.txt
