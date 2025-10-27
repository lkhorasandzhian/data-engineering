#!/bin/bash

a=$1
b=$2

# Проверка: ввёл ли пользователь 2 числа.
if [ -z "$a" ] || [ -z "$b" ]; then
    echo "Некорректный ввод - требуется 2 числа."
    exit 1
fi

if [ "$a" -gt "$b" ]; then
    echo "$a > $b"
elif [ "$a" -lt "$b" ]; then
    echo "$a < $b"
else
    echo "$a = $b"
fi