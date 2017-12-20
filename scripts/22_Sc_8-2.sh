#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 11 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 2 1
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 13 1
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 1
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 1 0


sleep 59

/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 9 1
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 9 1

sleep 56.5

aplay -d 5 /home/ray/boulot/cueilleurs_de_brume/foret/son/voix_off/00_eric_reveilletoi_caiman.wav

sleep 44

/usr/bin/oscsend localhost 12345 /mapmap/pause
/home/ray/boulot/cueilleurs_de_brume/foret/scripts/opacity_mapmap_down.sh 11 3
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 13 0
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 2 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 1 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_8-4.mp4
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 2 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_8-6.mp4
