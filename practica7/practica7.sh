#/bin/bash
nmap 192.168.0.* | base64 > iprivada.txt
nmap scanme.nmap.org | base64 > ipublica.txt 


