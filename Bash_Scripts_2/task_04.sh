#!/bin/bash

read -p "Введите адрес сервера (например, google.com): " host

if ping -c 1 "$host" > /dev/null 2>&1; then
    echo "Сервер $host доступен."
else
    echo "Сервер $host недоступен."
fi