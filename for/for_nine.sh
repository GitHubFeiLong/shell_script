#!/bin/bash

for i in {1..9};do
	for j in `seq $i`;do
		x=$[i*j]
		echo -e "${i}x${j}=${x} \c\t"; 
	done
	echo
done
