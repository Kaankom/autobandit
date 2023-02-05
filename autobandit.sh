#!/bin/bash

BANDIT_HOST="bandit.labs.overthewire.org"

echo "Start Banditing..."

SSH_PWD="bandit0" # starting password

for i in {0..3}
do
  SSH_CMD="bandit${i}@${BANDIT_HOST}"
  SSH_PWD=$(sshpass -p $SSH_PWD ssh -o StrictHostKeyChecking=no -o LogLevel=error $SSH_CMD -p 2220 < /level/level${i}.sh)
  echo "Bandit${i} solved"
done
