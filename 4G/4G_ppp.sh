#!/bin/bash

stty -F /dev/ttyACM0 -echo
cat /dev/ttyACM0 &
echo AT+csq > /dev/ttyACM0
echo AT+cops? > /dev/ttyACM0
echo AT+cgdcont? > /dev/ttyACM0

pppd connect 'chat -v -s -t 10 "" "AT" "" "ATDT*99***4#" "CONNECT" ""' user username password password /dev/ttyACM2 460800 nodetach crtscts debug usepeerdns defaultroute &

