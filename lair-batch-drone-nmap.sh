#!/bin/bash

for f in $2
do
  need_continuing=1
  while [ "$need_continuing" -eq 1 ];
  do
    echo "Importing $f"
    drone-nmap -k -limit-hosts $1 $f 2> /tmp/batch-drone-nmap
    if [[ $(</tmp/batch-drone-nmap) != *"Fatal: Import failed. Error Not Authorized"* ]]; then
      need_continuing=0
    fi
  done
done
