#!/bin/bash 

for i in $(env | grep squid); do
    id="$( cut -d '=' -f 1 <<< "$i" )"; echo "$id"; 
    unset "$id";
done
