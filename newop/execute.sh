#README
#装系统后，一键修改配置
## 1.设置PS1命令行提示符的颜色
## 2.设置history命令显示的格式
## 3.设置
#! /bin/bash

## 修改命令提示符样式
## 执行op_release.sh脚本，将操作系统的版本设置到环境变量${op}中
op=$(echo `cat /etc/redhat-release | cut -d" " -f4|cut -d"." -f1`)
## 创建initCentOS${op}.sh 格式的文件
# 定义需要用到的变量名
## file脚本文件
file=/etc/profile.d/initCentOS${op}.sh
## PS1VALUE 设置PS1环境变量显示的颜色
PS1VALUE="";
#echo file=${file}

## 判断脚本文件是否存在，如果存在就结束；不存在就继续执行
if [[ -f $file  ]]; 
then 
	echo -e "\e[1;31m$file存在,执行失败\e[0m";
	#exit 1;
else 
	echo -e "\e[1;32m $file不存在,继续执行\e[0m";
	# 创建配置文件
	touch ${file};
fi

# 根据系统版本设置${PS1VALUE}的值
if [[ $op -eq 7 ]]
then 
	#echo 7;
	PS1VALUE="\[\e[01;32m\][\u@\h: \W]\\\$\[\e[00m\]";
elif [[ $op -eq 8  ]];
then
	#echo 8;
	PS1VALUE="\[\e[01;34m\][\u@\h: \W]\\\$\[\e[00m\]";
else
	# 其它版本，使用黄色
	PS1VALUE="\[\e[01;33m\][\u@\h: \W]\\\$\[\e[00m\]";
fi
	
# 追加PS1变量
echo "export PS1='"${PS1VALUE}"'">> ${file}

### 重新加载一下${file}，不用重新登录就能看见效果
source ${file}
