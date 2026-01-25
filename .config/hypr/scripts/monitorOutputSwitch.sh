#!/bin/bash
# Get current input (Feature 60)
monitor=8
mode="x11"
hdmi1=0x11
hdmi2=0x12

current=$(ddcutil -b $monitor getvcp 60 --brief | awk '{print $4}')

if [ "$current" == $mode ]; then
  ddcutil -b $monitor setvcp 60 $hdmi2 # Switch to HDMI2
  hyprctl notify -1 2000 "rgb(ff1ea3)" "Monitor: HDMI2"
else
  ddcutil -b $monitor setvcp 60 $hdmi1 # Switch to HDMI1
  hyprctl notify -1 2000 "rgb(1effa3)" "Monitor: HDMI1"
fi
