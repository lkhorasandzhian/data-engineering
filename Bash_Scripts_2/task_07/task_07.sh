#!/bin/bash

# Подгрузка локального .env-файла, хранящего секрет.
source "$(dirname "$0")/.env"

read -p "Введите сообщение: " MESSAGE
echo

RESPONSE=$(curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
     -H "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" \
     --data-urlencode "chat_id=$CHAT_ID" \
     --data-urlencode "text=$MESSAGE")

# Красивый вывод JSON (если установлен jq).
if command -v jq >/dev/null 2>&1; then
    echo "$RESPONSE" | jq .
    echo
else
    echo "$RESPONSE"
    echo
    echo -e "Можно установить jq для красивого вывода JSON: sudo apt install jq"
fi

echo "Сообщение отправлено."