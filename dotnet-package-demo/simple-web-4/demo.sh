#!/bin/bash

. ../../util.sh

run "clear"

run "ccat Program.cs"

tmux new -d -s my-orig-session \
	    "$(dirname $BASH_SOURCE)/split_run_server.sh" \; \
	    split-window -v -p 33 \
	    "$(dirname ${BASH_SOURCE})/split_hit_localhost.sh" \; \
	    attach

