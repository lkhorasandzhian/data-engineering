#!/bin/bash

# Включение job control.
set -m

# Параметры: $1 — модификация задачи [bg/fg], $2 — номер задачи.
modify_selected_task() {
    echo "$1-mode для задачи $2:"
    $1 %$2

    echo "Оставшиеся фоновые задачи:"
    jobs
}

# Имитация Ctrl+Z (приостановка).
pause_task() {
    echo "Приостанавливаем задачу $1..."
    kill -TSTP %$1
}

print_separator() {
    echo "--------------------------------------------------"
}

sleep 5 &       # Задача 1.
sleep 15 &      # Задача 2.
sleep 30 &      # Задача 3.

echo "Начальные фоновые задачи:"
jobs

print_separator

# Подождём задачу 1.
modify_selected_task fg 1

print_separator

# Подождём задачу 2.
echo "ВНИМАНИЕ! Приготовья вручную поставить задачу 2 на паузу (Ctrl+Z) после ее перевода в fg."
modify_selected_task fg 2

print_separator

# Больше не ждём задачу 2.
# Обязательно: нажать Ctrl+Z во время работы задачи 2 в fg, чтобы самому поставить на паузу.
modify_selected_task bg 2

print_separator

# Подождём задачу 3.
modify_selected_task fg 3

echo "Скрипт завершён."