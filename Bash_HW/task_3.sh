#!/bin/bash

read -p "Введите число: " number

if [ $number -gt 0 ]; then
    echo "Положительное число"

    echo "Подсчёт от 1 до $number:"

    i=1
    while [ $i -le $number ]; do
        echo $i
        ((i++))
    done
elif [ $number -lt 0 ]; then
    echo "Отрицательное число"
else
    echo "Ноль"
fi