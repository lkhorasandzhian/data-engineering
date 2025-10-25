#!/bin/bash

read -p "Введите команду для запуска в фоне: " user_command

if [ -z "$user_command" ]; then
    echo "Ошибка: команда не введена."
    exit 1
fi

# Фоновый запуск команды.
eval "$user_command &"

# PID последнего фонового процесса.
pid=$!

echo "Команда запущена в фоне. PID: $pid"