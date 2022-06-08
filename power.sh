#!/bin/bash -xv
STATE=$(cat ~/state.txt)
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [[ "$1" == "on" ]]; then
    echo Running laston.sh
    sh ~/laston.sh
    exit 0
fi

if [[ "$1" == "off" ]]; then
   echo Running killrun.sh leds.py off
   $SCRIPT_DIR/killrun.sh leds.py off
   exit 0
fi

~/bike-pi/toggle.sh
