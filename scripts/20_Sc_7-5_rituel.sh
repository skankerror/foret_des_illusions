#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 6 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 6 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 2 1
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 1
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 1 0

sleep 30

/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 2 0
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 0

/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 1 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_8-1.mp4
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 2 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_8-2.mp4
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 9 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_8-3.tif
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 11 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_8-caiman.mp4



