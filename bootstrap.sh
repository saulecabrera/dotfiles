#!/usr/bin/env bash 

set -e

git pull origin master;

rsync --exclude ".git/" --exclude "README.md" --exclude ".gitignore" --exclude "bootstrap.sh" --exclude ".DS_Store" \
  -avh --no-perms . ~;
