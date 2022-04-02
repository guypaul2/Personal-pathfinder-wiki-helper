echo '<center>' > RésultTab.txt
echo '{| CLASS="tablo autoalt toutgauche" WIDTH="100%"' >> RésultTab.txt
echo '|+ Propriétés ajoutant un prix spécifique' >> RésultTab.txt
echo '|- CLASS="titre"' >> RésultTab.txt
echo '| WIDTH="20%" | Salles' >> RésultTab.txt
echo '| WIDTH="25%" | Recettes' >> RésultTab.txt
echo '| WIDTH="20%" | Avantages' >> RésultTab.txt
echo '| WIDTH="25%" | Création' >> RésultTab.txt
echo '| WIDTH="5%" | Durée (jours)' >> RésultTab.txt
echo '| WIDTH="5%" | Taille (cases)' >> RésultTab.txt
echo '' >> RésultTab.txt
echo '|- CLASS="premier"' >> RésultTab.txt
rec=" - ||"
ava=" - ||"
cre=" - ||"
dur=" - ||"
tai=" - ||"
while read line
do
  if [[ !("$line" =~ [a-z]) ]]; then
    if [ ${#line} -eq 1 ]; then
      pre='|-'
    else
      echo "$pre" >> RésultTab.txt
      echo "$tit$rec$ava$cre$dur$tai" >> RésultTab.txt
      tit="| ''[[${line//[$'\t\r\n']}|${line//[$'\t\r\n']}]]'' ||"
      rec=" - ||"
      ava=" - ||"
      cre=" - ||"
      dur=" - ||"
      tai=" - ||"
    fi
  fi
  if [[ $line == *":"* ]]; then
      if [[ $line == *"Recettes"* ]]; then
        rec=" ${line//[$'\t\r\n']} ||"
        rec="${rec//Recettes :/}"
      elif [[ $line == *"Avantages"* ]]; then
        ava=" ${line//[$'\t\r\n']} ||"
        ava="${ava//Avantages :/}"
      elif [[ $line == *"Création"* ]]; then
        cre=" ${line//[$'\t\r\n']} ||"
        cre="${cre//Création :/}"
      elif [[ $line == *"Durée"* ]]; then
        dur=" ${line//[$'\t\r\n']} ||"
        dur="${dur//Durée :/}"
        dur="${dur//jours/}"
      elif [[ $line == *"Taille"* ]]; then
        tai=" ${line//[$'\t\r\n']}"
        tai="${tai//Taille :/}"
        tai="${tai//cases/}"
#      elif [[ $line == *"Amélioration de"* ]]; then
#        ade=" ${line//[$'\t\r\n']} ||"
#        ade="${ade//Amélioration de :/}"
#      elif [[ $line == *"Amélioration en"* ]]; then
#        aen=" ${line//[$'\t\r\n']}"
#        aen="${aen//Amélioration en :/}"
      fi
  fi
done < salles.txt
echo "|}" >> RésultTab.txt
echo '</center>' >> RésultTab.txt
