#!/bin/bash

dir_path=$1

if [ ! -d "$dir_path" ]; then
    echo "Ошибка: директория не найдена!"
    exit 1
fi

echo "Изменяю дату на 10 дней назад для всех файлов..."
find "$dir_path" -type f -exec touch -d "10 days ago" {} \;

find "$dir_path" -type f -mtime +7 -ok rm -f {} \;

echo "Операция по удалению файлов старше 7 дней завершена."