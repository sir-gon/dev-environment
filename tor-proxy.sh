#!/bin/bash

export IP=`ifconfig en1 |grep "inet " | awk '{print $2}'`
export TOR_PORT=9999
export PRIVOXY_PORT=8118 
echo "export http_proxy=http://$IP:$PRIVOXY_PORT; export https_proxy=http://$IP:$PRIVOXY_PORT; export HTTP_PROXY=http://$IP:$PRIVOXY_PORT; export HTTPS_PROXY=http://$IP:$PRIVOXY_PORT; export SOCKS_PROXY=socks://$IP:$TOR_PORT; export socks_proxy=socks://$IP:$TOR_PORT"
