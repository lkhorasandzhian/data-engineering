#!/bin/bash

# Максимально допустимый процент использования диска.
THRESHOLD=80

echo "Проверка всех дисков:"
echo "-------------------------"

# Берём следующие точки монтирования:
# - диски Linux (/dev/*);
# - диски Windows (/mnt/c, /mnt/d и т. д.).
df -h | grep -E '^/dev/|/mnt/[a-zA-Z]$' | while read line; do
    filesystem=$(echo "$line" | awk '{print $1}')
    used=$(echo "$line" | awk '{print $5}' | sed 's/%//')
    mount_point=$(echo "$line" | awk '{print $6}')

    echo "Диск: $filesystem | Использование: $used% | Точка монтирования: $mount_point"

    if [ "$used" -gt "$THRESHOLD" ]; then
        echo "⚠ ВНИМАНИЕ: диск '$mount_point' заполнен более чем на $THRESHOLD%!"
    fi
done