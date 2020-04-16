#!/bin/bash

while read line; do
	
	if [[ ${line} =~ nologin$ ]] ;then
		echo $line | cut -d: -f1,7
	fi
	
	
done < /etc/passwd
