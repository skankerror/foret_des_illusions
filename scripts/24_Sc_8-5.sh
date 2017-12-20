#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 9 1
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_up.sh 9 2
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 1 0
/usr/bin/oscsend localhost 12345 /mapmap/pause
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 1 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_8-8.mp4
