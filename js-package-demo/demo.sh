#!/bin/bash

. ../util.sh

run "clear"

run "cat orig.js"

tmux new -d -s my-orig-session \
	    "$(dirname $BASH_SOURCE)/split_run_server.sh" \; \
	    split-window -v -p 33 \
	    "$(dirname ${BASH_SOURCE})/split_hit_localhost.sh" \; \
	    attach

run "cat index.js"

tmux new -d -s my-orig-session \
	     "$(dirname $BASH_SOURCE)/split_run_server2.sh" \; \
	     split-window -v -p 33 \
	     "$(dirname ${BASH_SOURCE})/split_hit_docker.sh" \; \
	     attach

run "vi index.js"

tmux new -d -s my-orig-session \
             "$(dirname $BASH_SOURCE)/split_run_server_aci.sh" \; \
             split-window -v -p 33 \
             "$(dirname ${BASH_SOURCE})/split_hit_aci.sh" \; \
             attach

