#!/bin/bash
sum=0
while true;
do
cat << EOF
1) 鲍鱼
2) 满汉全席
3) 龙虾
4) 燕窝
5) 帝王蟹
EOF
read -p "请点餐" MENU
case $MENU in

1|4)
	echo 价格10元
	let sum+=10
	;;
3|5)
	echo 价格20元
	let sum+=20
	;;
2)
	echo 价格20000元
	let sum+=20000;
	;;
6)
	echo "退出"
	echo "总价钱$sum"
	break
	;;
*)
	echo "点错了没有这道菜"

esac
done
