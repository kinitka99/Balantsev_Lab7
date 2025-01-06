read -p "Введите длину пароля: " lenght

byte_lenght=$((($lenght * 3 + 3) / 4))
password=$(openssl rand -base64 $byte_lenght | cut -c1-$lenght)

echo "Ваш сгенерированный пароль: $password"

