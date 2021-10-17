#!/bin/bash
STATE=$(cat ~/state.txt)
if [[ "$STATE" == "off" ]]; then
    echo Running laston.sh
    ~/laston.sh
else
   echo Running killrun.sh leds.py off
   ~/killrun.sh leds.py off
fi
