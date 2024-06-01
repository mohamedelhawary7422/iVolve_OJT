#!/bin/bash

subnet="172.16.17"

for i in {0..255}; do
    ip="$subnet.$i"
    ping -c 1 -W 1 "$ip" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Server $ip is up and running"
    else
        echo "Server $ip is unreachable"
    fi
done
