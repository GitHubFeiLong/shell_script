#!/bin/bash
if [ $# -eq 0 ];
then 
	echo "请输入要创建的用户"
	exit 100;
else
	echo "开始创建用户"
fi

while [ "$1" ];do
	if id $1 &> /dev/null;then
		echo $1 is exist
	else
		useradd $1
	fi
	shift
done
echo "ALL user is  created"
