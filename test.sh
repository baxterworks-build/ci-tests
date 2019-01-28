#!/usr/bin env bash

for c in wget curl aria2c bash gcc sh apt yum pacman readlink git nproc; do
    echo $c: $(command -v $c || echo no)
done;
echo

command -v nproc && echo CPUs: $(nproc)
free -m

echo "Current path is $pwd"
echo "Environment:"
export

echo "apt update for traceroute"
apt update &> /dev/null
apt -y install traceroute iproute2 &> /dev/null

traceroute 8.8.8.8


echo "Console slowdown test:"

echo "With output"
time (for i in {1..1000}; do echo console output $i; done)

echo "No output"
time (for i in {1..1000}; do echo console output $i; done) >/dev/null


