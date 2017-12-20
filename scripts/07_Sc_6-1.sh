#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 8 0
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 12 1
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_up.sh 12 30
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 9 0
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 9 0
