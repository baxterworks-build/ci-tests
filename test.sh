#!/usr/bin env bash

for c in wget curl aria2c bash gcc sh apt yum pacman readlink git nproc; do
    echo $c: $(command -v $c || echo no)
done;
echo

command -v nproc && echo CPUs: $(nproc)

echo "apt update for ip and tracroute"
apt update &> /dev/null
apt -y install traceroute iproute2 &> /dev/null

ip addr
traceroute 8.8.8.8
