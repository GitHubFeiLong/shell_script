#!/bin/bash

EMAIL=1696741038@qq.com
TIME=10
WARNING=10

df | sed -nr "/^\/dev\/sd/s#^([^ ]+) .* ([0-9]+)%.*#\1 \2#p" | while read DEVICE use;
do
	if [ ${use} -gt ${WARNING} ]; then
		echo "${DEVICE} while be full,use:${use}" | mail -s "DISK WARNING" ${EMAIL}
	fi

done
