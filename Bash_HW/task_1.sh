#!/bin/bash

if [ -z "$1" ]; then
    echo "Требуется аргумент: $0 <имя_файла>"
    exit 1
fi

# Запрашиваемый файл для поиска.
required_file=$1

# Список файлов и каталогов.
dir_list=(*)

is_found=false
for item in "${dir_list[@]}"; do
    if [ "$item" == "$required_file" ]; then
        is_found=true
        break
    fi
done

if $is_found; then
    echo "Файл присутствует в текущей директории."
else
    echo "Файл отсутствует в текущей директории."
fi

echo

printf "%-18s | %-18s | %s\n" "Имя" "Тип" "Права"
echo "-----------------------------------------------------"
for item in "${dir_list[@]}"; do
    stat -c '%-15n | %-15F | %A' "$item"
done