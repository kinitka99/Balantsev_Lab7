read -p "Введите директорию: " dir
for file in "$dir"/*; do
	mv "$file" "$dir/backup_$(basename "$file")"
done
echo "Все файлы переименованы. "
