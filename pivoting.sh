#!/bin/bash
# DEVELOPER DARKSEC

if [ "$1" == "" ]
then
	echo "USE DESSA FORMA : ./$0 <site ou o ip>"
	echo "LEMBRANDO QUE ESTÁ FERRAMENTA SERVE PARA MONITORAR TODA ROTA NO HOST ALVO"
else
for i in {1..255}; do
(ping -c 1 -t $i $1 | grep "From" | awk -F " " '{print "ALVOS :" $2}' &);
done 2> /dev/null > trace.txt
fi
cat trace.txt
