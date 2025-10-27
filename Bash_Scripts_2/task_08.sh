#!/bin/bash

if [ -z "$1" ]; then
  echo "Требуется передача аргумента: $0 <путь_к_директории>"
  exit 1
fi

DIRECTORY=$1

find "$DIRECTORY" -type f -name "*.log" -printf "%T@ %p\n" \
  | sort -n \
  | head -n 5 \
  | awk '{ $1=""; print substr($0,2)}'