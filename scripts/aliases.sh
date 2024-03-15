alias gitk='git fetch --all && git remote prune origin && gitk --all --date-order --full-history&'
alias git-code='GIT_EDITOR=code git'

alias make-script-executable='chmod 755'

# Echo Proxy Variables
proxy-vars() {
    echo "HTTPS_PROXY:" $HTTPS_PROXY
    echo "https_proxy:" $https_proxy
    echo "HTTP_PROXY: " $HTTP_PROXY
    echo "http_proxy: " $http_proxy
    echo "NO_PROXY:   " $NO_PROXY
    echo "no_proxy:   " $no_proxy
}
