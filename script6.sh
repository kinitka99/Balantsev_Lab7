dir="./first-subfolder"

#Определяем дату 7 дней назад
date_7_days_ago=$(date -d "7 days ago" +%Y-%m-%d)

# Проходим по всем файлам с префиксом backup
for file in "$dir"/backup_*.txt; do
        # Извлекаем дату из имени файла в формате DD-MM-YYYY
        file_date=$(basename "$file" | sed -n 's/backup_\([0-9]\{2\}-[0-9]\{2\}-[0-9]\{4\}\).*/\1/p')

        # Проверяем удалось ли извлечь дату
        if [[ -n "$file_date" ]]; then
                # Преобразуем дату из имени файла в формат YYYY-MM-DD
                formatted_file_date=$(date -d "$file_date" +%Y-%m-%d 2>/dev/null)

                # Сравниваем даты
                if [[ "$formatted_file_date" < "$date_7_days_ago" ]]; then
                        echo "Deleting $file"
                        rm "$file"
                fi
        fi
done
