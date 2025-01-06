read -p "Enter a filename: " filename
read -p "Enter a word the search: " word

#Считаем кол-во вхождений
count=$(grep -o "$word" "$filename" | wc -l)

#Вывод результата
echo "The word "$word" appears $count times in $filename. "
