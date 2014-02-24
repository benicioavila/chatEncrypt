#!/bin/bash

KEY_IN_FILE="/tmp/key.txt";
KEY_OUT_FILE="/tmp/keyc.txt";
TEXT_FILE=$2;
PASS="CYS5U2fAPWMB4DLMpddA6ENnB"

echo $TEXT_FILE>$KEY_IN_FILE;

case $1 in
 "e") openssl enc -aes-256-cbc -a -aes-256-cbc -salt -in $KEY_IN_FILE -out $KEY_OUT_FILE -pass pass:$PASS; cat -v $KEY_OUT_FILE; ;; 
 "d") openssl enc -aes-256-cbc -d -a -aes-256-cbc -salt -in $KEY_IN_FILE -out $KEY_OUT_FILE -pass pass:$PASS; cat -v $KEY_OUT_FILE; ;; 
 *) echo "Você tem de entrar com um parâmetro válido"; rm -f $KEY_IN_FILE; exit; ;; 
esac

rm -f $KEY_OUT_FILE;
rm -f $KEY_IN_FILE;

