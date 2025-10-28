#!/bin/bash

hello_prefix() {
    echo "Hello, $1"
}

two_numbers_sum() {
    echo "Сумма чисел равна $(($1 + $2))"
}

# Приветствие через hello.
read -p "Ваше имя: " name
if [ -z "$name" ]; then
    echo "Ошибка: имя не может быть пустым!"
    exit 1
fi
hello_prefix "$name"

# Сумма чисел.
read -p "Введите 2 числа через пробел: " number1 number2
if [ -z "$number1" ] || [ -z "$number2" ]; then
    echo "Ошибка: нужно ввести два числа!"
    exit 1
fi
two_numbers_sum "$number1" "$number2"