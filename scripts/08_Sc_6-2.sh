#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 2 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_6-2.mp4
/usr/bin/oscsend localhost 12345 /mapmap/play
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 2 1
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_down.sh 12 7

sleep 35

/usr/bin/oscsend localhost 12345 /mapmap/pause
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 12 0

