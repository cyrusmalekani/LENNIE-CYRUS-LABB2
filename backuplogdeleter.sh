#!/bin/bash
echo "# Deleting backup log #" >&1
truncate -s 0 /tmp/log1.bak
