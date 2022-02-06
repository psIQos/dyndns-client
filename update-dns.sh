#! /bin/bash

#ipv6=$(ifconfig eth0 | grep -Po '(?<=inet6 )([0-9a-z]{1,4}:){7}[0-9a-z]{1,4}')
#ipv4=$(ifconfig eth0 | grep -Po '(?<=inet )(\d{1,3}.){3}\d{1,3}')
ipv4=$(curl -s https://checkipv4.dedyn.io)
ipv6=$(curl -s https://checkipv6.dedyn.io)
auth="Authorization: Basic $DYNDNS_AUTH"

resp=$(curl -s -H "$auth" "https://dynupdate.no-ip.com/nic/update?hostname=$1&myip=$ipv4,$ipv6")

echo $resp

