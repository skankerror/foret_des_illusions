#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/play
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 2 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 9 0

sleep 5

/usr/bin/oscsend localhost 12345 /mapmap/pause
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 9 1
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 2 0
