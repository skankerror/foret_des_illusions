#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 0
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 5 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 2 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 5 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/uri is 2 /home/ray/boulot/cueilleurs_de_brume/foret/video/Sc_7-5_rituel.mp4
