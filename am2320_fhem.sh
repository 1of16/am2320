#!/bin/bash
#echo "1 $1 - 2 $2 - 3 $3";
(
echo -e "setreading bz_temphumi2 Error $1\r";
sleep 1;
echo -e "setreading bz_temphumi2 temperature $2\r";
sleep 1;
echo -e "setreading bz_temphumi2 humidity $3\r";
sleep 1;
echo -e "exit\r"
) | telnet 192.168.1.6 7072 >/dev/null 2>&1
