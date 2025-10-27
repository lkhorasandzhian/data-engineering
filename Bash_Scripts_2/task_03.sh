#!/bin/bash

length=$1

chars=({a..z} {A..Z} {0..9})
password=""

for (( i=0; i<length; i++ )); do
    rand_index=$(( RANDOM % ${#chars[@]} ))
    password+="${chars[$rand_index]}"
done

echo "Сгенерированный пароль длины $length: $password"