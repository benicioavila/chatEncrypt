#!/bin/bash
#[chatEncSend.sh]

# $1 =: HOST
# $2 =: PORTA
# $3 =: MENSAGEM

# Info do host
HOST=$1

# Porta
PORTA=$2

# Mensagem
MSG="$3"

#echo $MSG
bash myEnc.sh e "$MSG" > /dev/tcp/$HOST/$PORTA

echo "ENVIANDO"
bash myEnc.sh e "$MSG"
echo "________________-"
echo "$MSG"
echo "ENVIADO"

