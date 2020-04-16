#!/bin/bash
PS3="请点菜（1-6）:"
select MENU in 鲍鱼 满汉全席 龙虾 燕窝 帝王蟹 退出; do
	case $REPLY in
	1|4)
		echo "价格是:\$10";
		;;
	3|5)
		echo "价格是：\$20";
		;;
	2)
		echo 价格是：\$1000;
		;;
	6)
		break;
		;;
	*)
		echo "请选择正确的菜";
		;;
	esac
done
