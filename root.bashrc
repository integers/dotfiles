################################################
### /root/.bashrc :: Root Bash Settings File ###
################################################
#
# Reload this file:
# # . ~/.bashrc
#

###
### Prompt
###

NORMAL_TEXT=$(tput setaf 7)
GREEN_TEXT=$(tput setaf 2)
RED_TEXT=$(tput setaf 1)
PURPLE_TEXT=$(tput setaf 13)

PS1='${RED_TEXT}root${NORMAL_TEXT}@${PURPLE_TEXT}\H${NORMAL_TEXT} [${GREEN_TEXT}\w${NORMAL_TEXT}] ${RED_TEXT}#${NORMAL_TEXT} '

# Export Prompt
export PS1

