#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 1 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 2 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 3 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 4 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 5 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 6 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 7 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 8 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 9 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 10 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 11 0

/usr/bin/oscsend localhost 12345 /mapmap/paint/rate if 1 0.05
/usr/bin/oscsend localhost 12345 /mapmap/paint/rate if 2 0.05
/usr/bin/oscsend localhost 12345 /mapmap/paint/rate if 3 0.25
/usr/bin/oscsend localhost 12345 /mapmap/paint/rate if 4 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/rate if 5 3

/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 1 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_3_foret_noire.png
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 2 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_2_foret_jap.png
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 3 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_1.mp4
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 4 /home/ray/boulot/cueilleurs_de_brume/foret/video/MORPHOS.mp4
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 5 /home/ray/boulot/cueilleurs_de_brume/foret/video/lucioles.mp4

/usr/bin/oscsend localhost 12345 /mapmap/rewind
/usr/bin/oscsend localhost 12345 /mapmap/pause












