#!/bin/bash

dir_path=$1

if [ ! -d "$dir_path" ]; then
    echo "Ошибка: директория не найдена!"
    exit 1
fi

cd "$dir_path" || exit

for file in *; do
    if [ -f "$file" ]; then
        lowercase=$(echo "$file" | tr 'A-Z' 'a-z')

        if [ "$file" != "$lowercase" ]; then
            # Временное имя, чтобы избежать конфликта на NTFS (костыль для совместимости с ОС Windows).
            temp_name="${file}.tmp_rename"
            mv "$file" "$temp_name"
            mv "$temp_name" "$lowercase"
        fi
    fi
done

echo "Все файлы переименованы в строчные буквы."
