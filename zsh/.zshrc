export PATH="/usr/local/sbin:$PATH"
export EDITOR=nvim

# uncomment to run zprof
# zmodload zsh/prof

# history
HISTSIZE=50000
SAVEHIST=10000

# todo Apple Chip
# brew
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

source ~/.zinit.sh

# load the rest of the configs
source $HOME/bootstrap/zsh/.exports
source $HOME/bootstrap/zsh/.aliases
source $HOME/bootstrap/zsh/.k8s_aliases
# source $HOME/bootstrap/zsh/.kubectl_prompt

# Created by `pipx` on 2023-08-03 11:49:21
export PATH="$PATH:/Users/vbadai/.local/bin"

# todo check if this is needed
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
