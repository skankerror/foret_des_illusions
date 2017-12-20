#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 1 0
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 0
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 8 1
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_up.sh 8 7 &
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_down.sh 2 7

