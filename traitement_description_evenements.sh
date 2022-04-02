echo -n "" > RésultTab.txt
while read line
do
  if [[ !(${#line} -eq 1) ]]; then
    if [[ !("$line" =~ ".") ]]; then
      echo "====${line//[$'\t\r\n']}====" >> RésultTab.txt
      lastTitre=${line//[$'\t\r\n']}
    else
      echo "{s:UC}{s:Reference|${line%%.*}($lastTitre)}" >> RésultTab.txt
      tmp="${line%%.*}"
      echo -n "'''$tmp''' :" >> RésultTab.txt
      echo "${line#"$tmp."}" >> RésultTab.txt
      echo "" >> RésultTab.txt
    fi
  else
    echo "" >> RésultTab.txt
  fi
done < eventDescription.txt
