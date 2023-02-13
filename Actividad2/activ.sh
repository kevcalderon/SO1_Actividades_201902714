#!/bin/bash

echo "Ingrese user de github: "
read GITHUB_USER

response=$(curl -s https://api.github.com/users/$GITHUB_USER)
# echo $response

GITH_USER=$(echo $response | jq '.login')
GITH_ID=$(echo $response | jq '.id')
GITH_CREATE=$(echo $response | jq '.created_at')

MESSAGE="Hola $GITH_USER. User id: $GITH_ID. Cuenta fue creada el: $GITH_CREATE".

echo $MESSAGE


#crear file saludo.log
TIMESTAMPACT=$(date +"%Y-%m-%d")
LOG_DIR="/tmp/$TIMESTAMPACT"
LOG_FILE="$LOG_DIR/saludos.log"
mkdir -p $LOG_DIR

echo "Archivo creado correctamente en: $LOG_DIR"

echo $MESSAGE >> "$LOG_FILE"

