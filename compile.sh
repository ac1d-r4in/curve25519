#!/bin/bash

# Проверяем, передан ли файл в качестве аргумента
if [ -z "$1" ]; then
  echo "Usage: $0 filename.cpp"
  exit 1
fi

# Получаем имя файла без расширения
filename="${1%.*}"

# Компилируем с указанием архитектуры arm64
g++ -arch arm64 -o -lsodium "$filename" "$1"

# Проверяем успешность компиляции
if [ $? -eq 0 ]; then
  ./"$filename"
else
  echo "Compilation failed."
fi