#!/bin/bash

SESSION_NAME="dev-example"

function has-session {
  tmux has-session -t $SESSION_NAME 2>/dev/null
}

if has-session ; then
  echo "Session already exists"
else
  cd /Users/example/projectFolder/
  tmux new-session -d -s $SESSION_NAME 'cd app; npm run start;'
  tmux split-window -h 'cd api; npm run start;'
  tmux split-window -v
  tmux attach-session -d -t $SESSION_NAME
fi
