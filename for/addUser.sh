#!/bin/bash
echo "开始新建用户"
USERS="
user1
user2
user3
user4
user5
user6
user7
user8
user9
user10
"
for i in ${USERS};
do 
	useradd ${i};
	PASSWORD=`openssl rand -base64 9`;
	echo user: ${i},passwd:${PASSWORD} >> userpasswd.txt;
	#
	#保存密码:
	echo "${PASSWORD}" | passwd --stdin ${i}
	# 设置登录过期
	chage -d 0 ${i}
	echo 创建用户"${i}"成功	
done
echo "新建用户完成"
