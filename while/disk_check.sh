#!/bin/bash
SECOND=60
SIZE=80
while :;do
	disk=`df | sed -rn "/^\/dev\/sd/s#.* ([0-9]+)%.*#\1#p"`
	if [ ${disk} -ge ${SIZE} ] ;then 
		echo "disk 要满了" | `mail -s disk_warning 1696741038@qq.com`
	fi
	sleep ${SECOND};
done
