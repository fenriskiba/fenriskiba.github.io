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

# Random Alias
alias tri-mon-dup="xrandr --output DP-2 -s 3840x2160 --rate 120 --output DP-4 --same-as DP-2 --output HDMI-0 --same-as DP-2"

alias gitk="gitk --all --date-order&"
alias chrome="google-chrome"

alias zsh-profile="code ~/.zshrc"

alias podman-cleanup="podman system prune --all --force && podman rmi --all && podman volume rm --all"
alias docker="podman"
# alias docker-compose="podman-compose"

cp ~/.zshrc ~/projects/fenriskiba.github.io/scripts/desktop-zsh-profile.sh