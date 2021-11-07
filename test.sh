#!/usr/bin/env bash
set -eou pipefail

HOSTS="github.com gitlab.com dev.azure.com 1.1.1.1 8.8.8.8 deb.debian.org mirrors.kernel.org mirrorservice.org"
for h in $HOSTS; do echo $h; mtr --report-wide -c2 -e -z $h; echo; done
echo