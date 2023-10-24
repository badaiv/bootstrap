export PATH="/usr/local/sbin:$PATH"
# export EDITOR=nvim

# uncomment to run zprof
# zmodload zsh/prof

# history
HISTSIZE=50000
SAVEHIST=10000

# todo brew Apple chip
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

source ~/.zinit.sh

# load the rest of the configs
source $HOME/bootstrap/zsh/.exports
source $HOME/bootstrap/zsh/.aliases
source $HOME/bootstrap/zsh/.k8s_aliases
# source $HOME/bootstrap/zsh/.kubectl_prompt

# Created by `pipx` on 2023-08-03 11:49:21
export PATH="$PATH:/Users/vbadai/.local/bin"
