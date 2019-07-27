#!/bin/bash

success () {
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] %s\n" "$1"
}

cp ~/.zshrc ./zshrc
success "Backup .zshrc"

cp ~/.vimrc ./vimrc
success "Backup .vimrc"

cp ~/.gitconfig ./gitconfig
success "Backup .gitconfig"

cp ~/.git-completion.bash ./git-completion.bash
success "Backup .git-completion.bash"

cp /usr/local/etc/httpd/extra/httpd-vhosts.conf ./vhosts
success "Backup vhosts"

cp ~/.ssh/config ./ssh/config
success "Backup ssh config"

git add .
git commit -m "Backup"
git push
