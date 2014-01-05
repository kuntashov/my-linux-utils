#!/bin/bash

# Banshee has no command switch that can function as Play/Payse button, 
# but it has one switch (--play) to start and the other (--stop) to stop playing.

# This simple script tries to figure out whether banshee plays something or not 
# and then stops/starts playing accordingly. 

position=`banshee --query-position| sed s/position:\ //| sed s/,.*//`;
if [[ $position -ne "0" ]]; then
    banshee --stop;
else 
    banshee --play;
fi;