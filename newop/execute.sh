#README
#装系统后，一键修改配置
#! /bin/bash

## 修改命令提示符样式
source /root/shell_script/newop/op_release.sh
echo $op
file=/etc/profile.d/env.sh

if [[ -f $file  ]]; then echo $file存在;
else echo $file不存在;
fi


#echo -e '#!/bin/bash\n'>> /etc/profile.d/env.sh
#echo 'export PS1="\[\e[01;32m\][\u@\h: \W]\\$\[\e[00m\]"' >> /etc/profile.d/env.sh
