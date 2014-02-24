#!/bin/bash
# [chatEnc.sh]

# $1 =: HOST
# $2 =: PORTA

# Info do host
HOST=$1

# Porta
PORTA=$2

#Saída
OUT='chat_enc_read.out'

while [ true ]
do
    rm -f $OUT
    touch $OUT
    nc -l $PORTA >$OUT;
    exec 2<&- #limpa stderr
    
    while read line           
    do          
	bash myEnc.sh d "$line";          
    done <$OUT

done

