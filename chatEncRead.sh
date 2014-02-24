#!/bin/bash
# [chatEnc.sh]
# Author: 
# Date: 

# Info do host
HOST='127.0.0.1'
OUT='chat_enc_read.out'

# Porta
port=2526

while [ true ]
do
    rm -f $OUT
    touch $OUT
    nc -l $port >$OUT;
    exec 2<&- #limpa stderr
    
    while read line           
    do    
        #echo $line       
	bash myEnc.sh d "$line";          
    done <$OUT

done

