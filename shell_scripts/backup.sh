#!/bin/sh

# To run before
git config --global user.email "simon.hoerrle@gmail.com"
git config --global user.name "Simon Hörrle"
git config --global --unset credential.helper
git config core.sshCommand "ssh -i /config/.ssh/id_rsa -o 'StrictHostKeyChecking=no' -F /dev/null"

HA_VERSION=`cat .HA_VERSION`
COMMIT_CURRENT_DATE=$(date +'%d-%m-%Y %H:%M:%S')
COMMIT_MESSAGE="[$HA_VERSION]: $COMMIT_CURRENT_DATE"

echo "$COMMIT_MESSAGE"

git add .
git commit -m "$COMMIT_MESSAGE"
git push
