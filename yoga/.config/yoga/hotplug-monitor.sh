#!/bin/bash

#Adapt this script to your needs.

DEVICES=$(find /sys/class/drm/*/status)

export DISPLAY=:0
export XAUTHORITY=/home/red/.Xauthority

monitors=()
#this while loop declare the $HDMI1 $VGA1 $LVDS1 and others if they are plugged in
while read l
do
  dir=$(dirname $l);
  status=$(cat $l);
  dev=$(echo $dir | cut -d\- -f 2-);

  if [ $(expr match  $dev "HDMI") != "0" ]
  then
#REMOVE THE -X- part from HDMI-X-n
    dev=HDMI${dev#HDMI-?-}
  else
    dev=$(echo $dev | tr -d '-')
  fi

  if [ "connected" == "$status" ]
  then
    echo $dev "connected"
    monitors+=( $dev )
    declare $dev="yes";
  fi
done <<< "$DEVICES"

function wait_for_monitor (){
    xrandr | grep $1 | grep '\bconnected'
    while [ $? -ne 0 ]; do
            logger -t "waiting for 100ms"
            sleep 0.1
            xrandr | grep $1 | grep '\bconnected'
    done
 }

dpcounter=0
hdmicounter=0
for t in ${monitors[@]}; do
  if [[ $dpcounter == 0 && $t == "DP"* ]]; then
    wait_for_monitor "DP1-3"
    xrandr --output DP1-3 --mode 1920x1080 --pos 0x0 --rotate normal
    dpcounter=$((dpcounter+1))
  elif [[ $dpcounter == 1 && $t == "DP"* ]]; then
    wait_for_monitor "DP1-2"
    xrandr --output DP1-2 --mode 1920x1080 --pos 1920x0 --rotate normal
    dpcounter=$((dpcounter+1))
  elif [[ $dpcounter > 0 && $t == "eDP"* ]]; then
    xrandr --output eDP1 --primary --mode 1920x1080 --pos 971x1080 --rotate normal
  elif [[ $dpcounter == 0 && $t == "HDMI1" ]]; then
    wait_for_monitor "HDMI1"
    xrandr --output HDMI1 --mode 1920x1080 --pos 1920x0 --rotate normal
    hdmicounter=$((hdmicounter+1))
  elif [[ $hdmicounter > 0 && $t == "eDP"* ]]; then
    xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal 
  elif [[ $dpcounter == 0 && $hdmicounter == 0 && $t == "eDP"* ]]; then
    xrandr --output DP1-2 --off --output DP1-3 --off --output HDMI1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
  fi
done

wal -i $HOME/.wallpaper --iterative -o $HOME/.config/wal/done.sh