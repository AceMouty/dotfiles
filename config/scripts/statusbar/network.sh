#!/bin/bash

net_info=$(nmcli | grep -m 1 wlp3s0)
essid=$(echo "$net_info" | awk '{print $4}')
wifi_status=$(echo "$net_info" | awk '{print $2}')

if [ "$wifi_status" == "connected" ]; then
  icon="直"
else
  icon="睊"
  essid="Disconnected"
fi

printf "%s \n" "$icon $essid"
