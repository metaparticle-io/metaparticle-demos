#!/bin/bash

. ../util.sh

run "clear"

run "az container list -o table"

ip=$(sh -c "echo `az container show --name web -g test | jq .ipAddress.ip`")

while true; do
	curl --connect-timeout 5 ${ip}:8080 || true
	sleep 2
done
