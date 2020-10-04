#!/usr/bin env bash

for c in wget curl aria2c bash gcc sh apt yum pacman readlink git nproc; do
    echo $c: $(command -v $c || echo no)
done;
echo

command -v nproc && echo CPUs: $(nproc)
free -m

echo whoami? $(whoami)
sudo -nv || echo sudo unavailable
echo
echo "Current path is $PWD"
echo "Environment:"
export

if [ -f "/etc/debian_version" ]; then
    echo "apt update for mtr"
    apt update || echo apt update unavailable
    apt -y install mtr-tiny || echo apt install unavailable
    echo deb.debian.org
    mtr -r -c 1 deb.debian.org
    echo
    echo mirror.rit.edu
    mtr -r -c 1 mirror.rit.edu

else
    traceroute 8.8.8.8 || echo traceroute not found
fi
docker --version || echo docker unavailable
