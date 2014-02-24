#!/bin/bash
# [chatEnc.sh]


### VAR ###
HOST_IP_READ="127.0.0.1"
PORT_READ="2525"

HOST_IP_SEND="127.0.0.1"
PORT_SEND="2525"

PASS_MY_ENC="1"
### VAR ###

function usage
{
  echo "uso: ChatEnc.sh [[[-r ler ] [-s enviar]] | [-h ajuda]]"
}


while [ "$1" != "" ]; do
    case $1 in
        -r | --ler )  	   bash chatEncRead.sh $HOST_IP_READ $PORT_READ   	;;
        -s | --enviar )    bash chatEncSend.sh $HOST_IP_SEND $PORT_SEND "$2"	;;
        -h | --ajuda )     usage; exit ;;
        * )                ;;
    esac
    shift
done

exit



