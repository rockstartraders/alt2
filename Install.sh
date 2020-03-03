#!/usr/bin/env bash

if (( $EUID != 0 )); then
    echo "Please run this as root"
    exit
else
   pip3 install -r requirements.txt &> /dev/null
   echo "Done installing requirements.txt"


fi



