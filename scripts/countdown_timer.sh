#!/bin/bash

read -p "Please enter the countdown time (HH:MM:SS format): " input_time

if [ -z "$input_time" ]; then
    echo "No time entered. Exiting."
    exit 1
fi


IFS=: read -r h m s <<< "$input_time"

if [ -z "$s" ]; then
  if [ -z "$m" ]; then
    s=$h
    h=0
    m=0
  else
    s=$m
    m=$h
    h=0
  fi
fi

h=$((10#$h))
m=$((10#$m))
s=$((10#$s))

total_seconds=$((h * 3600 + m * 60 + s))   
echo "Starting countdown..."              

while [ $total_seconds -gt 0 ]; do
    printf "\r%02d:%02d:%02d" $((total_seconds / 3600)) $(((total_seconds % 3600) / 60)) $((total_seconds % 60))
    sleep 1
    ((total_seconds--))
done

echo -e "\r00:00:00"
echo "Time's up!"