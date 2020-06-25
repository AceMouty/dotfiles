#!/bin/sh

trap 'update' 5

# utility functions for the status bar
batt(){
  $HOME/.config/scripts/statusbar/battery.sh
}

net(){
  $HOME/.config/scripts/statusbar/network.sh
}
# main function to kcik off all others
update(){
  echo "$(net) $(batt)" &
  wait
}

# run forever and update the statusbar
while :; do
  update
  sleep 10 &
  wait
done
