### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

#export SPACESHIP_CONFIG="$HOME/bootstrap/zsh/.spaceshiprc.zsh"
export STARSHIP_CONFIG="$HOME/bootstrap/zsh/.starship.toml"

# Must Load OMZ Git library
zinit snippet OMZL::git.zsh
zinit snippet OMZL::theme-and-appearance.zsh

# oh-my-zsh plugins
#zinit snippet OMZP::git
#zinit cdclear -q # <- forget completions provided up to this moment

#zinit light spaceship-prompt/spaceship-prompt
zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship
zinit light zsh-users/zsh-autosuggestions
#zinit light zsh-users/zsh-syntax-highlighting
#zinit light marlonrichert/zsh-autocomplete
#zinit light marlonrichert/zcolors
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light  zdharma-continuum/history-search-multi-word
zinit light djui/alias-tips
zinit light mattmc3/zsh-safe-rm
zinit light bobsoppe/zsh-ssh-agent
#zinit light gko/ssh-connect

zinit snippet OMZP::extract
zinit snippet OMZP::brew
#zinit snippet OMZP::gcloud
zinit snippet OMZP::command-not-found
zinit snippet OMZP::timer

# ice svn to load full dir if there are several files
zinit ice svn
zinit snippet OMZP::aliases

#zinit ice svn
#zinit snippet OMZP::per-directory-history

#todo check how to make working
#zi atinit'autoload -Uz genpass-apple'
#zinit snippet OMZ::plugins/genpass/genpass-apple
#zinit snippet OMZP::genpass

zinit snippet OMZP::colorize
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256
ZSH_COLORIZE_STYLE="dracula"

# zinit snippet OMZP::

zi ice as"completion"
zi snippet OMZP::docker/completions/_docker
zinit snippet OMZP::docker
