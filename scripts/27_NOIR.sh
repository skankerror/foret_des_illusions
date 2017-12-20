#!/bin/bash

/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_down.sh 1 5
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 0
/usr/bin/oscsend localhost 12345 /mapmap/pause
