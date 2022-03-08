#!/bin/bash
yum install -y wget git
mkdir $PWD/jdck
wget https://nodejs.org/dist/v16.14.0/node-v16.14.0-linux-x64.tar.xz
tar xf node-v16.14.0-linux-x64.tar.xz -C /usr/local/
mv /usr/local/{node-v16.14.0-linux-x64,node}
echo "export PATH=/usr/local/node/bin:$PATH" >> /etc/profile
. /etc/profile
npm install -g pm2
git clone https://js.6dygit.workers.dev/https://github.com/6dylan6/jdck.git $PWD/jdck
cd $PWD/jdck
npm install
pm2 start index.js
echo -e "\n\033[32m安装完成。浏览器访问http://ip:6789\033[0m"