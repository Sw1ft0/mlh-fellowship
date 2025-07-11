#!/bin/bash

# kill all tmux sessions
tmux kill-server

# fetch the latest changes
git fetch && git reset origin/main --hard

# make sure all required dependencies are installed
pip install -r requirements.txt

# start a detached tmux session which runs the flask server
tmux new -d 'flask run --host=0.0.0.0'
