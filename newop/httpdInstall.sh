#! /bin/bash

URL=https://downloads.apache.org//httpd/httpd-2.4.41.tar.bz2

TARDIR=`echo ${URL} | rev | cut -d"/" -f 1 | rev`

INSTALLDIR=/apps/httpd

echo URL=${URL}
echo TARDIR=${TARDIR}

""echo -e "\e[1;31m开始安装httpd\e[0m"
sleep 3

cd /usr/local/src
yum install gcc make wget apr-devel.x86_64 apr-util-devel.x86_64 -y
wget ${URL}
tar xf ${TARDIR} 
cd httpd*

./configure --prefix=${INSTALLDIR} --enable-ssl --enable-so
make && make install
echo `echo PATH=${INSTALLDIR}`/bin':$PATH' > /etc/httpd.sh
source /etc/httpd.sh

# 用户
useradd -r apache -s /sbin/nologin

sed -i "s/^User.*/User apache/g" ${INSTALLDIR}/conf/httpd.conf; 
sed -i "s/^Group.*/Group apache/g" ${INSTALLDIR}/conf/httpd.conf;

httpd -k restart

echo -e "\e[1;31mhttpd安装完成\e[0m"
