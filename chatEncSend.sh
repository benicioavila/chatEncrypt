#!/bin/bash
#[chatEncSend.sh]


# Mensagem
MSG="$1"

# Info do host
HOST='172.25.137.110'

# Porta
port=2526

#echo $MSG
bash myEnc.sh e "$MSG" > /dev/tcp/$HOST/$port

