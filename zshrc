# Functions Autoloading
fpath=(~/.zsh $fpath)
fpath+=$HOME/.zsh/pure

# Completion
autoload -U promptinit && promptinit
autoload -U compinit compdef && compinit

# Prompt
prompt pure

# # Variables
export EDITOR='vim'
export GIT_EDITOR='vim'
export SHELL='/bin/zsh'
export GREP_COLOR=31

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# History
HISTFILE="$HOME/.history"
HISTSIZE=100000
SAVEHIST="$HISTSIZE"

# zsh-syntax-highlighting
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# User configuration

# Correction des commandes
setopt histignorealldups sharehistory
unsetopt correctall
setopt autocd

# Remove superfluous blanks from each command line being added to the history
# list
setopt histreduceblanks
# Remove command lines from the history list when the first character on the
# line is a space, or when one of the expanded aliases contains a leading space
setopt histignorespace
# Do not enter command lines into the history list if they are duplicates of the
# previous event.
setopt histignorealldups
# Switching directories for lazy people
setopt autocd
# See: http://zsh.sourceforge.net/Intro/intro_6.html
setopt autopushd pushdminus pushdsilent pushdtohome pushdignoredups
# Don't kill background jobs when I logout
setopt nohup
# See: http://zsh.sourceforge.net/Intro/intro_2.html
setopt extendedglob
# Do not require a leading '.' in a filename to be matched explicitly
setopt globdots
# Use vi key bindings in ZSH
setopt vi
# Causes field splitting to be performed on unquoted parameter expansions
setopt shwordsplit
# Automatically use menu completion after the second consecutive request for
# completion
setopt automenu
# If the argument to a cd command (or an implied cd with the AUTO_CD option set)
# is not a directory, and does not begin with a slash, try to expand the
# expression as if it were preceded by a '~'
setopt cdablevars
# Try to make the completion list smaller (occupying less lines) by printing
# the matches in columns with different widths
setopt listpacked
# Don't show types in completion lists
setopt nolisttypes
# If a completion is performed with the cursor within a word, and a full
# completion is inserted, the cursor is moved to the end of the word
setopt alwaystoend
# Try to correct the spelling of commands
setopt correct

# case-insensitive (uppercase from lowercase) completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# process completion
zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

# zstyle
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '%U%F{yellow}%d%f%u'
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash

# Reverse search
bindkey -e

# ALIAS
alias ls='ls -G'
alias ll='ls -lhG --color=auto'
alias la='ls -lahG --color=auto'
alias nmap='nmap -T4 -A -v $1'
alias cd..="cd .."
alias ..="cd .."
alias grep='grep --color=auto'
alias gpul='git pull'
alias gpus='git push'
alias gco='git co'
alias gci='git ci -m'
alias gst="git st"
alias preview="fzf --preview 'cat {}'"
alias pbcopy="xclip -selection clipboard"
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy"
alias mackb="xmodmap -e 'keycode 94=at numbersign' -e 'keycode 49=less greater less greater less greater'"
alias rails='f() { docker-compose -p web-test exec -T sqsc sh -c "bundle exec rails $1 $2 $3" };f'

# add support for ctrl+o to open selected file in VS Code
FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

# DOCKER ALIAS

# alias docker-drush='docker run --rm --link local.dev -v $(pwd):/app drush/drush:8 $1'
# alias docker-apache='docker exec -it web-apache-7 bash'
# alias docker-into-mysql='docker exec -it local.localhost mysql -h local.localhost -u root -proot'
# alias docker-mysql='docker exec local.localhost mysql $1'
# alias docker-restart='cd ~/lab/docker-preferences && docker-compose down && docker-compose up -d && cd -'
# alias docker-start='cd ~/lab/docker-preferences && docker-compose up -d && cd -'
# alias docker-stop='cd ~/lab/docker-preferences && docker-compose down && cd -'

# You can hit C-X C-E to open your $EDITOR
# with the command typed in the buffer and quickly edit your error
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey 'x^e' edit-command-line

# Homebrew
export PATH="/usr/local/sbin:$PATH"

export PATH="/usr/local/bin:$PATH"

# Node
export PATH="$PATH:./node_modules/.bin"

# Composer
export PATH="$PATH:/Users/Benoit/.composer/vendor/bin"

# PATH PHP 7.1
#export PATH="/usr/local/opt/php@7.1/bin:$PATH"
#export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

# NVM
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

bindkey "[D" backward-word
bindkey "[C" forward-word

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"

# phpbrew
# export PHPBREW_SET_PROMPT=1
# [[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
