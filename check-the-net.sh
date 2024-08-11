#!/bin/bash

# Lista de servidores para verificar
SERVIDORES=("google.com" "github.com" "facebook.com")

# Iterar sobre cada servidor
for SERVER in "${SERVIDORES[@]}"
do
  if ! ping -c 1 $SERVER &> /dev/null
  then
    echo "Alerta: Não foi possível alcançar $SERVER em $(date)"
  else
    echo "Conetividade com" $SERVER "... OK!"
  fi
done
