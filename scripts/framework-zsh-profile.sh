# Oh My ZSH Setup
export DISABLE_UPDATE_PROMPT=true
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="juanghurtado"
plugins=(git sudo)
source $ZSH/oh-my-zsh.sh

autoload -Uz compinit && compinit

# Add GOPATH and User Local Path (required for pip3)
export PATH=$PATH:/home/fenriskiba/.local/bin:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

# NVM Setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Git Aliases
alias gitk="git fetch --all && git remote prune origin && gitk --all --date-order --full-history&"
alias git-code='GIT_EDITOR=code git'

# Podman Aliases
alias podman-cleanup="podman system prune --all --force && podman rmi --all && podman volume rm --all"
alias docker="podman"
# alias docker-compose="podman-compose"

# Misc Aliases
alias zsh-profile="code ~/.zshrc"
alias make-script-executable="chmod +x"
alias python="python3"
alias reset-wifi="sudo modprobe -r iwlwifi && sudo modprobe iwlwifi && sudo systemctl restart NetworkManager.service"
# alias fprint-toggle="sudo pam-auth-update"

# Echo Proxy Variables
proxy-vars() {
    echo "HTTPS_PROXY:" $HTTPS_PROXY
    echo "https_proxy:" $https_proxy
    echo "HTTP_PROXY: " $HTTP_PROXY
    echo "http_proxy: " $http_proxy
    echo "NO_PROXY:   " $NO_PROXY
    echo "no_proxy:   " $no_proxy
}

# Copy to notes for backup
cp ~/.zshrc ~/projects/fenriskiba.github.io/scripts/framework-zsh-profile.sh