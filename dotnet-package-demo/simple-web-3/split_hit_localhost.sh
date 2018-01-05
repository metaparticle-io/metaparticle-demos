#!/bin/bash

. ../../util.sh

run "clear"

run "kubectl get services"

run "kubectl get deployments"

run "kubectl run -it busybox-replicas --rm --image=busybox -- sh"
