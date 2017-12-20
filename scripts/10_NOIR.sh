#!/bin/bash

/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_down.sh 1 3
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 1 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_7-2_rituel.mp4
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 2 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_7-1_rituel.mp4
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 0
