#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/play
/usr/bin/oscsend localhost 12345 /mapmap/paint/rate if 1 0.01
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 1
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_up.sh 2 10
