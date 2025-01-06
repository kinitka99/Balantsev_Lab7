num1=""
num2=""

until [[ "$num1" =~ ^-?[0-9]+$ ]]; do
	read -p "Enter the first number: " num1
	[[ ! "$num1" =~ ^-?[0-9]+$ ]] && echo "Please enter a valid integer."
done

until [[ "$num2" =~ ^-?[0-9]+$ ]]; do
        read -p "Enter the second number: " num2
        [[ ! "$num2" =~ ^-?[0-9]+$ ]] && echo "Please enter a valid integer."
done

if (( num1>num2 )); then
	echo "$num1 is greatest than $num2"
elif (( num1 < num2 )); then
	echo "$num1 is less than $num2"
else
	echo "$num1 is equal to $num2"
fi

