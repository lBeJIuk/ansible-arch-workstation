#!/bin/bash

# ipv4
sudo iptables -A INPUT -s 127.0.0.1 -j ACCEPT
sudo iptables -A INPUT -i wlp39s0 -p ALL -m state --state ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A INPUT -i wlp39s0 -j LOG --log-prefix '** SUSPECT IPV4 **'
sudo iptables -A INPUT -p tcp --dport 22 -s 192.168.1.0/24 -j ACCEPT
sudo iptables -A INPUT -i wlp39s0 -j DROP

# ipv6
# allow RELATED and ESTABLISHED traffic
sudo ip6tables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
# LOG other kinds of traffic
sudo ip6tables -A INPUT -j LOG --log-prefix '** SUSPECT IPV6 **'
# DROP everything else
sudo ip6tables -A INPUT -j DROP