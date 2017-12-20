#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 1 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_6-3.mp4
#/usr/bin/oscsend localhost 12345 /mapmap/rewind
/usr/bin/oscsend localhost 12345 /mapmap/play
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 1 1
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_down.sh 2 7

sleep 77

/usr/bin/oscsend localhost 12345 /mapmap/pause
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 0

