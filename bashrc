#######################################
### ~/.bashrc :: Bash Settings File ###
#######################################
#
# Reload this file:
# $ . ~/.bashrc
#

### If not running interactively, don't do anything
[[ $- != *i* ]] && return

###
### Aliases
###

##
## Modified existing commands
##

alias grep='grep --color=auto --line-number --ignore-case'
alias mkdir='mkdir --verbose --parents'
alias diff='colordiff --side-by-side --report-identical-files'
alias df='df --human-readable --print-type --total'
alias dfa='df --all'
alias dfc='dfc -d -s -T -W'
alias dfca='dfc -a'
alias du='du --human-readable --total'
alias dmesg='dmesg --color'
alias nano='nano --no-wrap'
alias vi='/usr/bin/vim'
alias vim='gvim'
alias pactree='pactree --color'

# ls
alias ls='ls --color=auto --classify --human-readable --group-directories-first'
alias lr='ls --recursive'
alias ll='ls -l'
alias la='ll --almost-all'
alias lm='la | less'

# Sorting with ls
alias lx='ll --ignore-backups -X' # Sort by extension
alias lz='ll --reverse -S'        # Sort by size
alias lt='ll --reverse -t'        # Sort by date

# Safety checks on critical commands
alias mv='mv --verbose --interactive'
alias cp='cp --verbose --interactive'
alias ln='ln --verbose --interactive'
alias rm='rm --verbose --interactive=once'
# alias rm=' timeout 3 rm -Iv --one-file-system' # Even safer
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Error tolerance
alias sl='ls'
alias cd..='cd ..'

##
## New commands
##

alias ..='cd ..'
alias off='systemctl poweroff'
#alias off='shutdown -P now' # Works without systemd; symlink to above command on Arch
alias hdate='date "+%A, %B %d, %Y [%I:%M:%S %p]"'
alias pingtest='ping -c 3 www.google.com'

# Searching with grep
alias dm='dmesg | grep'
alias hist='history | grep'
alias pss='ps -aux | grep'

# pacman
alias up='sudo pacman -Syu'
alias upp='sudo pacman -Syyu'
alias pacr='sudo pacman -Syy'
alias pacc='sudo pacman -Sc'
alias pacclean='sudo pacman -Scc'
alias pacs='pacman -Ss'
alias pacsl='pacman -Qs'

# pacman-related
alias mirrorlist='sudo reflector --verbose -l 5 --sort rate --save /etc/pacman.d/mirrorlist'
alias pacnew='find /etc -regextype posix-extended -regex ".+\.pac(new|save|orig)" 2> /dev/null'
alias pacnew2='locate -e --regex "\.pac(new|orig|save)$"'
alias pacnewlog='grep -E "pac(new|orig|save)" /var/log/pacman.log | tail'

###
### Command History
###

# Remove command history limit
unset HISTSIZE

# Remove ~/.bash_history line limit
unset HISTFILESIZE

# Remove duplicate commands and commands starting with a space
HISTCONTROL=ignoreboth:erasedups

# Append commands to ~/.bash_history instead of overwriting it
shopt -s histappend

# Store multi-line commands as a single command
shopt -s cmdhist

# Disable flow control to enable forward search history
[[ $- == *i* ]] && stty -ixon

# Share history across all terminals
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"
#PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

###
### Misc.
###

# Colorize directory contents a bit more
eval $(dircolors -b)

###
### Environment Variables
###

# History
export HISTSIZE
export HISTFILESIZE
export HISTCONTROL
export PROMPT_COMMAND

# $PATH
## RubyGems
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH

###
### Fun
###

fortune -a

