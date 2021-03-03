#!/bin/sh

wget https://github.com/pymumu/smartdns/releases/download/Release33/smartdns.1.2020.09.08-2235.x86_64-linux-all.tar.gz -O smartdns.1.2020.09.08-2235.x86_64-linux-all.tar.gz

tar zxf smartdns.1.2020.09.08-2235.x86_64-linux-all.tar.gz

cd smartdns

chmod +x ./install

./install -i

curl https://cdn.jsdelivr.net/gh/HXHGTS/dnsmasq-install/smartdns.conf > /etc/smartdns/smartdns.conf

systemctl enable smartdns

systemctl start smartdns

