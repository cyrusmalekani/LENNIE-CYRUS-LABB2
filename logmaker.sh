#!/bin/bash
while [ 1 ]
do
    date >> /var/testfil1
    echo "# Wrote to testfil1 #" >&1
    sleep 7
done
