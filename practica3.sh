#!/bin/bash 
#Este programa se encarga de checar los puertos abiertos de todas las ip que respondan al ping
# modo de ejecuccion ./practica3 192.168.0.1 100 

Host=$1 

Host2=$2 

Function is_alive_ping(){ 

Ping  -c 1 $ip > /dev/null 2>&1 

[$? -eq 0] &&  echo "Node with ipo: $ip is up" 

For ((counter=1; counter<=60000; counter ++)) 

Do 

(echo >/dev/tcp/$ip/$counter) > /dev/null 2>&1 && echo " $counter open" 

Done 

} 

IFS='.'  read –r –a array <<< $1 

a=${array[3]} 

For ((counter=$a; counter<=$2; counter++)) 

Do 

Ip="${array[0]}.${array[1]}.${array[2]}.$counter" 

Is_alive_ping $ip 

done 