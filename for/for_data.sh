#!/bin/bash
for i in {1..365};
do
	DIR=`date -d "-$i days" +%F`
	mkdir /data/test/$DIR;
	for j in {1..10};
	do 
		touch /data/test/$DIR/$RANDOM.log
	done
done
