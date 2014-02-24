#!/bin/bash

export KEY_IN_FILE="/tmp/key.txt";
export KEY_OUT_FILE="/tmp/keyc.txt";
export TEXT_FILE="$2";
export PASS="1";

echo $TEXT_FILE>$KEY_IN_FILE;

case $1 in
 "e") openssl enc -aes-256-cbc -a -aes-256-cbc -salt -in $KEY_IN_FILE -out $KEY_OUT_FILE -pass pass:$PASS; cat $KEY_OUT_FILE; ;; 
 "d") openssl enc -aes-256-cbc -d -a -aes-256-cbc -salt -in $KEY_IN_FILE -out $KEY_OUT_FILE -pass pass:$PASS; cat $KEY_OUT_FILE; ;; 
 *) echo "Você tem de entrar com um parâmetro válido"; rm -f $KEY_IN_FILE; exit; ;; 
esac

rm -f $KEY_OUT_FILE;
rm -f $KEY_IN_FILE;
