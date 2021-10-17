#!/bin/bash
pkill -f 'python3 /root/fancy.py'
python3 ~/$1 $2

if [[ "$2" == "off" ]]; then
    echo "off" > ~/state.txt
else
    echo "on" > ~/state.txt
    echo "/root/killrun.sh $1 $2" > ~/laston.sh
fi
