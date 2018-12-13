#!/usr/bin env bash

for c in wget curl aria2c bash gcc sh apt yum pacman readlink git nproc; do
    echo $c: $(command -v $c || echo no)
done;
echo

command -v nproc && echo CPUs: $(nproc)
