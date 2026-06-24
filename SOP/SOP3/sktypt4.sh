#!/bin/bash

ZUZYCIE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
LIMIT=80

if [ "$ZUZYCIE" -gt "$LIMIT" ]; then
    echo "Alarm! Zuzycie przestrzeni dyskowej wynosi $ZUZYCIE%" | mailx -s "Alert dyskowy" "osboxes@localhost"
fi