#!/bin/bash
Api_key=$1
FILE=$2
LINK=$3
LINK1=$4
echo '\nSam1'
curl -X POST https://www.virustotal.com/vtapi/v2/file/scan -F apikey=$Api_key -F 'file=$FILE'
echo '\nSam2'
curl -X POST https://www.virustotal.com/vtapi/v2/url/scan -F apikey=$Api_key -F url=$LINK
echo '\nSam3'
curl -X POST https://www.virustotal.com/vtapi/v2/domain/report?apikey=$Api_key&domain=$LINK