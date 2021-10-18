#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

pkill -f "python3 $SCRIPT_DIR/fancy.py"
python3 $SCRIPT_DIR/$1 $2

if [[ "$2" == "off" ]]; then
    echo "off" > ~/state.txt
else
    echo "on" > ~/state.txt
    echo "$SCRIPT_DIR/killrun.sh $1 $2" > ~/laston.sh
fi
