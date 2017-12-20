#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/play
/usr/bin/oscsend localhost 12345 /mapmap/paint/rate if 7 0.67
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_up.sh 7 5

sleep 16

/usr/bin/oscsend localhost 12345 /mapmap/pause
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_up.sh 9 2 &
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_down.sh 7 6
/usr/bin/oscsend localhost 12345 /mapmap/paint/rewind i 1














