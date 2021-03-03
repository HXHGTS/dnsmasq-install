#!/bin/sh

echo 正在安装dnsmasq. . .

yum install bind-utils dnsmasq -y

echo 正在配置dnsmasq. . .

curl https://cdn.jsdelivr.net/gh/HXHGTS/dnsmasq-install/dnsmasq.conf > /etc/dnsmasq.conf

echo 正在启动dnsmasq. . .

systemctl restart dnsmasq

echo --------------------------------

echo tcp/udp端口:53

echo --------------------------------

echo 成功安装dnsmasq!

exit 0
