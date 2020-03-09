#!/bin/bash
## 将Linux的版本设置到环境变量中
export op=$(echo `cat /etc/redhat-release | cut -d" " -f4|cut -d"." -f1`)
centOS7=7;
centOS8=8;
echo op is $op
if [[ $centOS7 -eq $op ]]; then echo -e '\e[1;32mcentos7 \e[0m';
elif [[ $centOS8 -eq $op ]]; then echo -e '\e[1;34mcentos8 \e[0m';
fi
