#!/bin/bash
echo "开始删除用户"
for i in {1..10}; 
do
	userdel -r user${i}
done
echo "删除用户成功"
