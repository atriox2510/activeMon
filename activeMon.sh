#!/bin/bash

function ctrl_c(){
  echo -e "\n\n[!] Saliendo...\n"
  exit 1
}

trap ctrl_c INT

target=$1

if [[ $1 ]]; then
  while true; do
    ping -c 1 $target &>/dev/null && echo "activo" || echo "No activo"
    sleep 4
  done
else
  echo -e "[+] Uso: $0 <target (ip|dominio|hostname)>"
fi
