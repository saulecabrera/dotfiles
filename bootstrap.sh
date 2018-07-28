#!/usr/bin/env bash 

set -e

cat << "EOF"

 |  _ \ / _ \_   _|  ___|_ _| |   | ____/ ___| 
 | | | | | | || | | |_   | || |   |  _| \___ \ 
 | |_| | |_| || | |  _|  | || |___| |___ ___) |
 |____/ \___/ |_| |_|   |___|_____|_____|____/ 
  

EOF

printf "\n===> Pulling latest master...\n";

git pull origin master;


printf "\n===> Syncing new files to your home directory...\n";

rsync --exclude ".git/" --exclude "README.md" --exclude ".gitignore" --exclude "bootstrap.sh" --exclude ".DS_Store" \
  -avh --no-perms . ~;

zsh;
