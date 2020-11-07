#!/usr/bin/env bash
apt update && apt -y install curl
dd if=/dev/urandom of=test.bin bs=1M count=1
curl --user upload:$UPLOAD_AUTH -F file=@test.bin https://droneupload.baxter.works
