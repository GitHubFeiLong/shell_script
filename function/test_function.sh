#!/bin/bash
os_version(){
	sed -rn 's#^.* ([0-9]+)\..*#\1#p' /etc/redhat-release 
}
yesorno(){
	read -p "Please input yes or no:" INPUT
	case ${INPUT} in
	[Yy]|[Yy][Ee][Ss])
		echo yes;
		;;
	[Nn]|[Nn][Oo])
		echo no;
		;;
	esac
}
