#!/bin/bash
# $1 numéro du média $2 temps en sec
# i compteur de boucle
# j et k, variables temporaires pour varier l'opacité de 1 à 0 (1-i/100)
# l et m, variables temporaires pour varier le temps ($2-5/100)
# 	1 étant le temps que met send_osc2 pour effectuer les 100 actions.

for i in `seq 1 100`;
do
	j=`echo "$i/100" | bc -l`
	k=`echo "1-$j" | bc -l`
	l=`echo "$2-1" | bc -l`
	m=`echo "$l/100" | bc -l`
	/usr/bin/oscsend localhost 12345 /mapmap/mapping/opacity if $1 $k
	sleep $m
done

