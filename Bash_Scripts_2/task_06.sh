#!/bin/bash

file=$1

if [ ! -f "$file" ]; then
    echo "Ошибка: файл не найден!"
    exit 1
fi

last_mod=$(stat -c %Y "$file" 2>/dev/null || stat -f %m "$file")

echo "Следим за изменениями файла: $file"
echo "Нажмите Ctrl + C для выхода."

while true; do
    current_mod=$(stat -c %Y "$file" 2>/dev/null || stat -f %m "$file")

    if [ "$current_mod" != "$last_mod" ]; then
        echo "Файл был изменён! ($(date))"
        last_mod="$current_mod"
    else
        echo "Файл без изменений. ($(date))"
    fi

    sleep 5
done