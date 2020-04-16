#!/bin/bash

function finish(){
	echo "finish" | tee -a finish.log
}
trap finish exit
while :;do
	echo running;
	sleep 0.5;
done

