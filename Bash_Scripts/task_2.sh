read -p "Попытка найти путь файла: " filepath

if [ -f "$filepath" ]; then
    echo "Файл найден!"
else
    echo "Файл не найден."
fi