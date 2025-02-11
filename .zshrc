# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh


# Set-up icons for files/folders in terminal
alias ls='eza --icons=always $@'
alias ll='eza -al --icons=always $@'
alias lt='eza -a --tree --level=1 --icons=always $@'

alias nvim='nvim -p'
alias flake-rebuild='sudo nixos-rebuild switch --flake /home/michael/NixOS-Hyprland/#default'
alias config='/run/current-system/sw/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias windows='vmware -X /home/michael/vmware/Windows\ 10\ x64/Windows\ 10\ x64.vmx'
alias icat='kitten icat'

# Create shell proxy to connect to Emory VPN through another machine
ssh_proxy() {
    ssh -A -t alarm@alarm ssh -A -t "$@"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# OpenAI Key
export OPENAI_API_KEY=$(cat ~/.openai_key)

# Computer IPs
source ~/.computer_ips 

# Starting down here, are set in user.nix

#ZSH_THEME="xiong-chiamiov-plus"

#plugins=(
#    git
    #zsh-autosuggestions
    #zsh-syntax-highlighting
#)

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r


# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

#HISTFILE=~/.zsh_history
#HISTSIZE=10000
#SAVEHIST=10000
#setopt appendhistory
