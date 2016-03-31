#!/bin/bash

IP=$(curl -s www.trackip.net/ip)
echo "Tracker: $IP"
echo "File/Folder: $1"
echo "Output: $2"
echo `ctorrent -t -u "http://$IP:6969/announce" -s $2 $1`
echo `ctorrent $2`
