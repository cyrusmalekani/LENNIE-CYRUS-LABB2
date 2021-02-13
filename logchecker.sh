#!/bin/bash

last=$(stat -c %Y /var/testfil1)

while [ 1 ]
do
    new=$(stat -c %Y /var/testfil1)

    echo "last: " $last >&1
    echo "new:" $new >&1

    if [ $last -eq $new ]
    then
        echo "# NO CHANGE #" >&1
    else
	echo "# CHANGE !!! #" >&1
	echo $(($(cat /tmp/log1.log | wc -l)+1)) $(date) " - The file has been changed" >> /tmp/log1.log
    fi
    /usr/local/bin/entrymover.sh
    sleep 10
done

