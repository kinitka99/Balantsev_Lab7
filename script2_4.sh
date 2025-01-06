read -p "Введите название сервера: " SERVER

# Пинг сервера
ping -c 1 "$SERVER" > /dev/null 2>&1

# Проверка результата пинга
if [[ $? -eq 0 ]]; then
    echo "Сервер $SERVER доступен."
else
    echo "Сервер $SERVER недоступен."
fi
