echo "" > RésultTab.txt
while read line
do
  if [[ $line == *"{s:Reference|"* ]]; then
  echo "| [[Bâtiments et organisations#$line|$line]]" >> RésultTab.txt
  echo "| -" >> RésultTab.txt
fi
done < TabbatiOrga.txt
