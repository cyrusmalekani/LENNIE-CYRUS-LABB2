#!/bin/bash

lines=$(cat /tmp/log1.log | wc -l)

if [ $lines -gt 9 ]
then
    echo "# Appending log to bak / cleaning #" >&1
    cat /tmp/log1.log >> /tmp/log1.bak
    truncate -s 0 /tmp/log1.log
fi


