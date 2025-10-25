#!/bin/bash

filename=$1

if [ -f "$filename" ]; then
    echo "Количество строк в файле: $(wc -l < "$filename")."
else
    echo "Файл не найден!"
fi