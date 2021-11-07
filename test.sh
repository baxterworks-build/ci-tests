#!/usr/bin/env bash
ping -c1 1.1.1.1
ping -6 -c1 2606:4700:4700::1111 || echo "No IPv6?"
ip addr

sudo apt -y update && sudo apt -y install mtr-tiny
HOSTS="github.com gitlab.com dev.azure.com 1.1.1.1 8.8.8.8 deb.debian.org mirrors.kernel.org mirrorservice.org"
for h in $HOSTS; do mtr --report-wide -c3 -e -z $h; echo; done
echo
export

