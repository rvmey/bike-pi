#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
LEDS=300

if [[ "$2" == "off" ]]; then
    echo "off" > ~/state.txt
else
    echo "on" > ~/state.txt
    echo "$SCRIPT_DIR/killrun.sh $1 $2" > ~/laston.sh
fi

pkill -f "python3 $SCRIPT_DIR/fancy.py"
pkill -f "python3 $SCRIPT_DIR/variety1.py"
pkill -f "python3 $SCRIPT_DIR/variety2.py"
pkill -f "python3 $SCRIPT_DIR/variety3.py"
pkill -f "python3 $SCRIPT_DIR/variety4.py"
pkill -f "python3 $SCRIPT_DIR/variety5.py"
python3 $SCRIPT_DIR/$1 $2
