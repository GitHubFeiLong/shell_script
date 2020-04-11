#!/bin/bash

DIR=/data/test
cd ${DIR}

for DIR in *;do
	YYYY_MM=`echo ${DIR} | cut -d- -f1,2`;
	DD=`echo ${DIR} | cut -d- -f3`;
	if [ -d /data/test/${YYYY_MM}/${DD} ]; then
		mkdir /data/test/${YYYY_MM}/${DD} -p
	fi
	mv /data/test/$DIR/* /data/test/${YYYY_MM}/${DD}
done

