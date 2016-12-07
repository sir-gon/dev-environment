# One line command to TOR and PRIVOXY as proxy using FISH as command line interpreter
# I use the device IP because can't use localhost inside docker o virtual machines.
# en1 is my conencted interface
# I can't use this as bash script because shell environment restrictions (can't set global environment variables from a script).

export IP=(ifconfig en1 |grep "inet " | awk '{print $2}'); export TOR_PORT=9999; export PRIVOXY_PORT=8118; export http_proxy=http://$IP:$PRIVOXY_PORT; export https_proxy=http://$IP:$PRIVOXY_PORT; export HTTP_PROXY=http://$IP:$PRIVOXY_PORT; export HTTPS_PROXY=http://$IP:$PRIVOXY_PORT; export SOCKS_PROXY=socks://$IP:$TOR_PORT; export socks_proxy=socks://$IP:$TOR_PORT
