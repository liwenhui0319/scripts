#!/bin/bash
name=`hostname`
echo '本机名字是:' $name

ip=`ifconfig eth0 | head -n 2 |awk '/inet/{print $2}'`
echo '本机ip是：'$ip

load_avg=`uptime |awk '{print $NF }'`
echo 'cpu的15分钟平均负载是:' $load_avg

net_in=`ifconfig eth0 | awk '/RX packets/{print $3}'`
echo '入站网卡流量是:' $net_in

net_out=`ifconfig eth0 | awk '/TX packets/{print $3}'`
echo '出站网卡流量是:' $net_OUT


total_men=`free -m | awk '/Mem/{print $2}'`
echo '该服务器总内存是:'$total_men'M'

free_men=`free -m | awk '/Mem/{print $4}'`
echo '该服务器空闲内存是:'$free_men'M'

dist=`df -h | grep '/dev/vda1'| awk '{print $5}'`
echo '系统盘资源使用率是:' $dist

users=`cat /etc/passwd | wc -l`
echo '本地账户数量为:' $user

login=`who | wc -l`
echo '当前登陆计算机的账户数量为:' $login

process=`ps aux | wc -l`
echo '当前计算机的启动进程是:' $process



















