#!/bin/bash

dir_path=$1

if [ ! -d "$dir_path" ]; then
    echo "Ошибка: директория не найдена!"
    exit 1
fi

cd "$dir_path"

for file in *; do
    # Проверка, что это файл, а не папка.
    if [ -f "$file" ]; then
        mv "$file" "backup_$file"
    fi
done

echo "Операция завершена! Всем файлам добавлен префикс backup_."