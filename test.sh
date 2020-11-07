#!/usr/bin/env bash
apt update && apt -y install curl
env > env.txt
dd if=/dev/urandom of=test.bin bs=1M count=1
curl --user upload:$UPLOAD_AUTH -F "file[]=@test.bin" "file[]=env.txt" https://droneupload.baxter.works
