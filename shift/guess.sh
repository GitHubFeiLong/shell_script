#!/bin/bash
NUM=$[RANDOM%9]
echo "输入0 - 9 之前地数字"
while read -p "guess num:" guess;
do
	if [ ${NUM} -eq ${guess} ]; 
	then
		echo "恭喜猜对了"
		break;
	elif [ ${NUM} -lt ${guess} ]
	then 
		echo "数字猜大";
	else
		echo "数字猜小了";
	fi	
done
