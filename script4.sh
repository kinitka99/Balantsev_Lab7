read -p "Введите название файла: " filename
if [[ -e "$filename" ]]; then
	wc -l $filename
else
	echo "Файл не найден"
fi

