#!/bin/bash

. ../../util.sh

run "clear"

run "docker ps"

run "./hit_localhost.sh"
