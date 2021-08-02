#!/bin/bash

SCRIPT_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
REPOS_HOME="$( dirname $SCRIPT_HOME | xargs dirname | xargs dirname)"

nvidia-docker rm yoltv4_iqtlabs_process
nvidia-docker run -it \
    -v /mnt/fs03/shared/datasets/rareplanes_mod/:/mnt/fs03/shared/datasets/rareplanes_mod/ \
    -v $REPOS_HOME:$REPOS_HOME -w $REPOS_HOME/synthesizing-robustness-analysis/src/sh \
    --ipc=host -p 9111:9111 \
    --name yoltv4_iqtlabs_process \
    yoltv4_iqtlabs
