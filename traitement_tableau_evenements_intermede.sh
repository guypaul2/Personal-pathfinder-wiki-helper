echo '' > RésultTab.txt

while read line
do
  IFS=' ' read -r -a lineArray <<< "$line"
  first=1
  str=""
  for un_mot in "${lineArray[@]}"
  do
    if [[ $un_mot =~ [0-9] ]];then
      if [ $un_mot != "d100" ]; then
        if [[ "$first" -eq 1 ]]; then
          str="${str% *}"
          echo "{s:Reference|${str:1}}" >> RésultTab.txt
          echo '<center>' >> RésultTab.txt
          echo "{| CLASS=\"tablo toutgauche autoalt\" ID=\"${str:1}\"" >> RésultTab.txt
          echo "|+ ${str:1}" >> RésultTab.txt
          echo '|- CLASS="titre"' >> RésultTab.txt
          echo '| 1d100' >> RésultTab.txt
          echo '| Évènement' >> RésultTab.txt
          echo '|- CLASS="premier"' >> RésultTab.txt
          echo -n "| ${un_mot//[$'\t\r\n']}" >> RésultTab.txt
          first=0
          strTmp="${str:1}"
          str=""
        else
          str="${str:1}"
          echo " || [[évènements d’intermède#${str//[$'\t\r\n']}($strTmp)|${str//[$'\t\r\n']}]]" >> RésultTab.txt
          echo "|-" >> RésultTab.txt
          echo -n "| ${un_mot//[$'\t\r\n']}" >> RésultTab.txt
          str=""
        fi
      fi
    else
      str="${str} ${un_mot}"
    fi
  done
  echo "|}" >> RésultTab.txt
  echo "</center>" >> RésultTab.txt
  echo "" >> RésultTab.txt
done < eventTab.txt
