#!/bin/bash

stty -F /dev/ttyACM0 -echo
cat /dev/ttyACM0 &

echo -e "AT+CFUN=0\r\n" >/dev/ttyACM0
echo -e "AT+CGDCONT=1,\"ip\",\"internet\"\r\n" >/dev/ttyACM0
echo -e "AT+UCGDFLT=1,\"ip\",\"internet\"\r\n" >/dev/ttyACM0
echo -e "AT+CFUN=1\r\n" >/dev/ttyACM0
echo -e "AT+COPS?\r\n" >/dev/ttyACM0
echo -e "AT+CGCONTRDP\r\n" >/dev/ttyACM0
echo -e "AT+CIND?\r\n" >/dev/ttyACM0
echo -e "AT+CGDCONT?\r\n" >/dev/ttyACM0
echo -e "AT+CGACT=1,1\r\n" >/dev/ttyACM0
echo -e "AT+CGDCONT?\r\n" >/dev/ttyACM0

