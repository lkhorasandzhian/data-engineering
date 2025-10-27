#!/bin/bash

echo "Бот запущен. Введите команду:"
echo "Доступные команды: дата, время, привет, выход"

while true; do
    read -p "> " user_input

    case "$user_input" in
        "дата")
            echo "Сегодня: $(date +"%d.%m.%Y")"
            ;;
        "время")
            echo "Сейчас: $(date +"%H:%M:%S")"
            ;;
        "привет")
            echo "Привет! Как дела?"
            ;;
        "выход")
            echo "До встречи!"
            break
            ;;
        *)
            echo "Неизвестная команда: '$user_input'. Попробуй снова."
            ;;
    esac
done