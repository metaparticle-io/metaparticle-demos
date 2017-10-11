#!/bin/bash

. ../util.sh

run "clear"

run "kubectl get services"

run "kubectl get statefulsets"

run "kubectl get deployments"

run "kubectl get pods"

run "kubectl run -it busybox-shards --rm --image=busybox -- sh"


