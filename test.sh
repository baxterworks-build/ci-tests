#!/usr/bin/env bash
apt update && apt --no-install-recommends -y install curl ca-certificates
env > env.txt
dd if=/dev/urandom of=test.bin bs=1M count=1
curl --user upload:$UPLOAD_AUTH -F "file[]=@test.bin" -F "file[]=env.txt" https://droneupload.baxter.works
