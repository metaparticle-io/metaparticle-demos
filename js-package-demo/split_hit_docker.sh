#!/bin/bash

. ../util.sh

run "clear"

run "docker ps"

while true; do
	curl localhost:8080
	sleep 2
done
