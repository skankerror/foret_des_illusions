#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 1 1
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 2 0
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 2 0
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 4 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 4 1
