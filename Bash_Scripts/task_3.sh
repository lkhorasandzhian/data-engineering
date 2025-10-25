#!/bin/bash

read -p "Введите путь к директории для архивации: " dir_path

if [ ! -d "$dir_path" ]; then
    echo "Ошибка: директория не найдена!"
    exit 1
fi

# Название папки и текущая дата.
dir_name=$(basename "$dir_path")
current_date=$(date +%Y-%m-%d)

# Название архива.
archive_name="${dir_name}_${current_date}.tar.gz"

# Архивация указанной папки.
tar -czf "$archive_name" -C "$(dirname "$dir_path")" "$dir_name"