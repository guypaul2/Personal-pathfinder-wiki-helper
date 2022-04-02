echo '<table class="page espace-col deuxcol"><tr><td>' > Résult.txt
echo "{s:Reference|NONBAT}" >> Résult.txt
echo "<div class="BD">" >> Résult.txt
while read line
do
  if [[ !("$line" =~ [a-z]) ]]; then
    if [ ${#line} -eq 1 ]; then
      echo "</div>" >> Résult.txt
      echo "" >> Résult.txt
      echo "{s:Reference|NONBAT}" >> Résult.txt
      echo "<div class="BD">" >> Résult.txt
    else
        desc=0
        echo -n "{s:BDTitre|" >> Résult.txt
        echo "$line" >> Résult.txt
        echo "|{s:gc}}" >> Résult.txt
    fi
  elif [[ $line == *"Salaire"* ]]; then
  echo "${line/Salaire/\'\'\'Salaire\'\'\'}{br}" >> Résult.txt
  elif [[ $line == *"Compétences"* ]]; then
  echo "${line/Compétences/\'\'\'Compétences\'\'\'}{br}" >> Résult.txt
  elif [[ $line == *"Avantages"* ]]; then
  echo "${line/Avantages/\'\'\'Avantages\'\'\'}{br}" >> Résult.txt
  elif [[ $line == *"Avantage"* ]]; then
  echo "${line/Avantage/\'\'\'Avantage\'\'\'}{br}" >> Résult.txt
  elif [[ $line == *"Recettes"* ]]; then
  echo "${line/Recettes/\'\'\'Recettes\'\'\'}{br}" >> Résult.txt
  elif [[ $line == *"Création"* ]]; then
  echo "${line/Création/\'\'\'Création\'\'\'}{br}" >> Résult.txt
  elif [[ $line == *"Employés"* ]]; then
  echo "${line/Employés/\'\'\'Employés\'\'\'}{br}" >> Résult.txt
  elif [[ $line == *"Salles"* ]]; then
  echo "${line/Salles/\'\'\'Salles\'\'\'}{br}" >> Résult.txt
  elif [[ $line == *"Taille"* ]]; then
  echo "${line/Taille/\'\'\'Taille\'\'\'}{br}" >> Résult.txt
  elif [[ $line == *"Amélioration de"* ]]; then
  echo "${line/Amélioration de/\'\'\'Amélioration de\'\'\'}{br}" >> Résult.txt
elif [[ $line == *"Amélioration en"* ]]; then
    echo "${line/Amélioration en/\'\'\'Amélioration en\'\'\'}{br}" >> Résult.txt
  elif [[ $line == *"Durée"* ]]; then
  echo "${line/Durée/\'\'\'Durée\'\'\'}{br}" >> Résult.txt
  else
    if [ $desc -eq 0 ]; then
      echo "(((Description)))" >> Résult.txt
      desc=1
    fi
    echo "$line" >> Résult.txt
  fi
done < extensions.txt
echo "</div>" >> Résult.txt
echo '</td></tr></table>' >> Résult.txt
