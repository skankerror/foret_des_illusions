#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 1
/usr/bin/oscsend localhost 12345 /mapmap/play
/usr/bin/oscsend localhost 12345 /mapmap/paint/rate if 2 1.5
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 2 1
