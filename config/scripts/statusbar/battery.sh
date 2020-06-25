#!/bin/bash

# vars for battery
battery="/sys/class/power_supply/BAT0"
battery_capacity=$(cat "$battery"/capacity)
battery_status=$(cat "$battery"/status)

# check the state of the battery
case "$battery_status" in

  "Charging")
    icon="ﮣ "
    ;;

  "Full")
    icon=" "
    ;;
    
  "Discharging")
   # echo "Discharging"

    if [ "$battery_capacity" -le 10 ]
    then
      icon="  "
    elif [ "$battery_capacity" -le 30 ]
    then
      icon="  "
    elif [ "$battery_capacity" -le 50 ]
    then
      icon="  "
    elif [ "$battery_capacity" -le 90 ]
    then
      icon="  "
    elif [ "$battery_capacity" -le 99 ]
    then
      icon="  "
    fi
    ;;

  "Unknownk")
    icon=""
    ;;

  *)
    icon=""
esac

# echo $battery_status
if [ "$battery_status" == "Charging" ] ||
   [ "$battery_status" == "Full" ] || 
   [ "$battery_status" == "Discharging" ]
then
  printf "%s%% \n" "$icon$battery_capacity"
elif [ "$battery_capacity" == "Unknownk" ]
then
  printf "%s Battery Status Unknownk \n" "$icon"
else
  printf "%s Check Battery \n" "$icon"
fi
