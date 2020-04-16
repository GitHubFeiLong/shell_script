#!/bin/bash
trap 'echo "signal:SIGINT"' int quit
trap -p

for((i=0;i<=10;i++))
do
	sleep 0.5
	echo ${i};
done
trap '' int
trap -p

for i in {11..20}
do
	sleep 0.5
	echo ${i};
done

trap '-' int
trap -p
for ((i=21;i<=30;i++))
do 
	sleep 0.5
	echo $i;
done


