#!/bin/bash

filename=$1
word=$2

if [ ! -f "$filename" ]; then
    echo "Ошибка: файл не найден!"
    exit 1
fi

count=$(grep -o -w "$word" "$filename" | wc -l)

echo "Количество слов '$word' в файле '$filename': $count."