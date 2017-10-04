#!/bin/bash

. ../util.sh

run "clear"

tmux new -d -s my-orig-session-replica \
            "$(dirname $BASH_SOURCE)/run_app.sh" \; \
            split-window -v -p 33 \
            "$(dirname ${BASH_SOURCE})/hit_app.sh" \; \
            attach



