#!/bin/bash

# Add the names of the specific scripts you want to keep running to this array
declare -a scripts=("button.py" "bd_ir_remote.py")

# Get the PIDs of all Python processes
pids=$(pgrep -f "python")

# Loop through the PIDs and check if they belong to specific scripts or not
for pid in $pids; do
  cmd=$(ps -p $pid --format cmd=)
  keep_process=false

  # Check if the process command matches any of the specified scripts
  for script in "${scripts[@]}"; do
    if [[ "$cmd" == *"$script"* ]]; then
      keep_process=true
      break
    fi
  done

  # If the process is not one of the specified scripts, terminate it
  if [ "$keep_process" = false ]; then
    echo "Killing PID $pid (Command: $cmd)"
    # Uncomment the next line to actually kill the processes
    kill $pid
  fi
done

