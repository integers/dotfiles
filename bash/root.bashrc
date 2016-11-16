################################################
### Root Bash Settings File :: /root/.bashrc ###
################################################
#
# Reload this file:
# # . ~/.bashrc
#

###
### Prompt
###

# Color variables
red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)

# Default
# PS1='[\u@\H \W]\$ '

# Basic
# PS1='\u@\H \w\$ '

# Fancy
PS1='\[$red\]\u\[$reset\]@\H [\[$green\]\w\[$reset\]] \[$red\]\$\[$reset\] '

# Export Prompt
export PS1

