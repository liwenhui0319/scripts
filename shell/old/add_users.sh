#!/bin/bash
read -p "请入用户名："$1
useradd -s /bin/bash  $1
echo -tty0
read -p "请设置用户密码："$2
echo tty0
  
