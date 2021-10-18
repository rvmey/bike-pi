#!/bin/bash -xv
STATE=$(cat ~/state.txt)
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [[ "$STATE" == "off" ]]; then
    echo Running laston.sh
    sh ~/laston.sh
else
   echo Running killrun.sh leds.py off
   $SCRIPT_DIR/killrun.sh leds.py off
fi
