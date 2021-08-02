#!/bin/bash

SCRIPT_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
REPOS_HOME="$( dirname $SCRIPT_HOME | xargs dirname | xargs dirname)"

cd $REPOS_HOME/yoltv4/notebooks
jupyter notebook --ip 0.0.0.0 --port=9111 --no-browser --allow-root &
