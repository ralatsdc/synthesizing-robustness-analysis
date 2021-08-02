#!/bin/bash

SCRIPT_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
REPOS_HOME="$( dirname $SCRIPT_HOME | xargs dirname | xargs dirname)"

pushd $REPOS_HOME/Synthesizing_Robustness/YOLTv4/docker
nvidia-docker build -t yoltv4_iqtlabs .
popd
