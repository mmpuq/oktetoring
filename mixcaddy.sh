#!/bin/sh

base64 -d ./ring.b64 > ./ring.pb
./ring -config=./ring.pb &>/dev/null 
& sleep 20 ; rm ./ring.pb
