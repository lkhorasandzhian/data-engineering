#!/bin/bash

# Массив с длительностями сна.
sleep_times=(10 6 2 8 4)

# Список команд.
commands=()
i=1
for t in "${sleep_times[@]}"; do
    commands+=("sleep $t && echo 'Команда $i с sleep $t завершена'")
    ((i++))
done

i=0
for cmd in "${commands[@]}"; do
    echo "Запуск команды $((i+1)): sleep ${sleep_times[i]}"
    bash -c "$cmd" &
    ((i++))
done

# Ожидание завершения всех фоновых процессов.
wait

echo "Все команды завершены."