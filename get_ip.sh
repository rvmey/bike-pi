#!/bin/bash

# Get the IP address using the 'ip' command
ip_address=$(ip -4 addr show scope global | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

# Check if the 'ip' command was successful and the IP address is not empty
if [ -n "$ip_address" ]; then
  echo "IP Address: $ip_address"
  ${HOME}/.TRIGGERcmdData/sendresult.sh $ip_address
else
  echo "Failed to retrieve IP address."
fi

