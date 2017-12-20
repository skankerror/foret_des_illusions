#!/bin/bash
# $1 numéro du média $2 temps en sec
# i compteur de boucle
# j variable temporaire pour varier l'opacité de 0 à 1 (i/100)
# l et m, variables temporaires pour varier le temps (($2-1)/100)
# 	1 étant le temps que met oscsend pour effectuer les 100 actions.

for i in `seq 1 100`;
do
	j=`echo "$i/100" | bc -l`
	l=`echo "$2-1" | bc -l`
	m=`echo "$l/100" | bc -l`
	/usr/bin/oscsend localhost 12345 /mapmap/mapping/opacity if $1 $j
	sleep $m
done

