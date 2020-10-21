#!/bin/bash
mkdir /dev/net
mknod /dev/net/tun c 10 200
chmod 0666 /dev/net/tun

AUTO_INSTALL=y ./openvpn-install.sh
echo "client-to-client" > /etc/openvpn/server.conf
