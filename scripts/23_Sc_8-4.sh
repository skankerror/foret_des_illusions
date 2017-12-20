#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/play
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 1 1
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 9 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 9 0
