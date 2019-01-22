#!/bin/bash

cp ~/.zshrc ./.zshrc
echo Backup .zshrc - OK

cp ~/.vimrc ./.vimrc
echo Backup .vimrc - OK

cp ~/.gitconfig ./.gitconfig
echo Backup .gitconfig - OK

cp ~/.git-completion.bash ./.git-completion.bash
echo Backup .git-completion.bash - OK

cp /usr/local/etc/httpd/extra/httpd-vhosts.conf ./vhosts
echo Backup vhosts - OK

git add .
git commit -m "Backup"
git push
