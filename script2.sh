read -p "Введите имя файла: " filepath
if [[ -e "$filepath" ]]; then
	echo "Файл найден!"
else
	echo "Файл не найден."
fi
