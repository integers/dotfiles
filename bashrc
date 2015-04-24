#######################################
### ~/.bashrc :: Bash Settings File ###
#######################################
#
# Reload this file:
# $ . ~/.bashrc
#

###
### Aliases
###

## Modified existing commands
alias diff='colordiff --side-by-side --report-identical-files'

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

