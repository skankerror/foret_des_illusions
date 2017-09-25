#!/bin/bash
# $1 numéro du média
# $2 vitesse ()

/usr/bin/oscsend localhost 12345 /mapmap/paint/speed if $1 $2
