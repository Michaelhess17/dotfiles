# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="xiong-chiamiov-plus"

plugins=( 
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# check the dnf plugins commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dnf

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
pokemon-colorscripts --no-title -s -r

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Set-up icons for files/folders in terminal using eza
alias ls='eza -a --icons=always $@'
alias ll='eza -al --icons=always $@'
alias lt='eza -a --tree --level=1 --icons=always $@'

# App aliases
alias cursor='/home/michael/.local/bin/cursor-*.AppImage'
alias vim="nvim"

# Set up Pixi
export PATH="/home/michael/.pixi/bin:$PATH"
export PATH="/opt/python/.pixi/envs/default/bin:$PATH"
eval "$(pixi completion --shell zsh)"

# Add dotfiles git alias
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Source current computer aliases
source $HOME/.computer_ips
