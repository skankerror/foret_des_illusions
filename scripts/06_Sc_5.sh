#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 9 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_5.tif
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 0
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 9 1
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_up.sh 9 8 &
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_down.sh 8 8
/usr/bin/oscsend localhost 12345 /mapmap/pause
