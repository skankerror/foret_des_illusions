#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/play
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 1 1
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_down.sh 9 2
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 9 0
