#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 4 0
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 4 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 1 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 1 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_7-4_rituel.mp4
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 2 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_7-3_rituel.mp4
