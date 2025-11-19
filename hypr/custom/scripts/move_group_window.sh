#!/bin/bash

DIR="$1"

if [[ "$DIR" != "left" && "$DIR" != "right" ]]; then
    echo "Usage: $0 [left|right]"
    exit 1
fi

active=$(hyprctl -j activewindow)
group=$(echo "$active" | jq '.grouped')
activeAddress=$(echo "$active" | jq '.address')
firstGroupedAddress=$(echo "$active" | jq '.grouped[0]')
lastGroupedAddress=$(echo "$active" | jq '.grouped[-1]')

if [[ "$group" = "[]" ]]; then
    exit 0
fi

if [[ "$DIR" == "left" ]]; then
  if [[ "$firstGroupedAddress" == "$activeAddress" ]]; then
    exit 0
  fi

  hyprctl dispatch movegroupwindow b
elif [[ "$DIR" == "right" ]]; then
  if [[ "$lastGroupedAddress" == "$activeAddress" ]]; then
    exit 0
  fi

  hyprctl dispatch movegroupwindow f
fi
