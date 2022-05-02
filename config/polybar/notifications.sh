#!/usr/bin/env bash

IS_PAUSED=$(dunstctl is-paused)

if [[ $# -gt 0 ]] && [[ "$1" == "--"* ]]; then
  case "$1" in
  "--toggle")
    dunstctl set-paused toggle
    IS_PAUSED=$(dunstctl is-paused)
    shift
    ;;
  *)
    echo >&2 "Invalid option: $@"
    exit 1
    ;;
  esac
fi

if [ "$IS_PAUSED" == "false" ]; then
  echo 
else
  echo 
fi
