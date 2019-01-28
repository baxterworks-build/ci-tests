#!/usr/bin env bash

for c in wget curl aria2c bash gcc sh apt yum pacman readlink git nproc; do
    echo $c: $(command -v $c || echo no)
done;
echo

command -v nproc && echo CPUs: $(nproc)
free -m

echo "Current path is $PWD"
echo "Environment:"
export

echo "apt update for traceroute"
apt update &> /dev/null
apt -y install traceroute iproute2 &> /dev/null

echo
traceroute 8.8.8.8
