export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export GOPATH=~/ws/golang
export TEXLIVE_PATH=/usr/local/texlive/2022/bin/universal-darwin
export PATH=~/local:$PATH:$(go env GOPATH)/bin:$TEXLIVE_PATH 
#export GOPROXY="https://proxy.golang.org,https://goproxy.io,direct"
# add autocomplete permanently to your zsh shell
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles

alias ll='ls -l -G'
alias ls='ls -G'

#[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
