#!/bin/bash

/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 6 1
/usr/bin/oscsend localhost 12345 /mapmap/mapping/visible if 1 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 6 1
/usr/bin/oscsend localhost 12345 /mapmap/paint/opacity if 1 1

