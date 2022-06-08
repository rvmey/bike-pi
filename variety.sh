#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [ $# -eq 0 ]; then
  echo "No parameter, defaulting to 1"
  V=1
else
  V=$1
fi

$SCRIPT_DIR/killrun.sh variety${V}.py
