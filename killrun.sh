#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
export NUM_LEDS=$(cat ~/numleds.txt)

if [[ "$2" == "off" ]]; then
    echo "off" > ~/state.txt
else
    echo "on" > ~/state.txt
    echo "$SCRIPT_DIR/killrun.sh $1 $2" > ~/laston.sh
fi

$SCRIPT_DIR/kill_py_scripts.sh

python3 $SCRIPT_DIR/$1 $2
