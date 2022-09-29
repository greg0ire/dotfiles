export TERM="xterm-256color"
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git extract ssh-agent gpg-agent docker docker-compose fancy-ctrl-z)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
path+=("$HOME/bin")
path+=("$HOME/.cargo/bin")
path+=("$HOME/.local/bin")
alias -s avi=vlc
alias vi=nvim
alias cat="bat --plain"
alias less=bat
bindkey "^[OF" end-of-line
bindkey "^[OH" beginning-of-line

bindkey -e
bindkey "5C" forward-word
bindkey "5D" backward-word
source ~/dev/switch/switch.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export EDITOR=nvim
export PAGER=most
export BAT_THEME='OneHalfDark'
export BAT_PAGER=less

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

[ -f /usr/share/fzf/shell/key-bindings.zsh ] && source /usr/share/fzf/shell/key-bindings.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
export FZF_DEFAULT_COMMAND='(rg --files ; rg --files vendor)'

bindkey '^ ' autosuggest-accept

if [[ -f ~/.zshrc.local ]]; then
    source ~/.zshrc.local
fi
