#!/bin/bash

. /etc/init.d/functions

function disableSELinux(){
	sed -i.bak 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
	action  “重启生效”;
}

function closeFireWall(){
	systemctl disable --now firewalld
        action "防火墙已禁用"
}

function setPS1(){
	 echo "PS1='\[\e[01;32m\][\u@\h: \W]\$\[\e[00m\]'" > /etc/profile.d/reset.sh
         action "请重新登录"
}

function setNetWorkName(){
	sed -i.bak '/GRUB_CMDLINE_LINUX=/s#"$# net.ifnames=0"#' /etc/default/grub
        grub2-mkconfig -o /boot/grub2/grub.cfg
        action "网卡名称修改完成,重新启动才能生效"
}
PS3="请输入相应的编号:(1-5):"

select menu in 禁用SELinux 关闭防火墙  修改提示符 修改网卡名称 退出; do
	case ${REPLY} in
	1)
		disableSELinux
		;;
	2)
		closeFireWall
		;;
	3)
		setPS1
		;;
	4)
		setNetWorkName
		;;
	5)
		exit;	
		;;
	*)
		action "请输入正确的数字" false
	esac
done
