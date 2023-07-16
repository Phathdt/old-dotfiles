source ~/.zplug/init.zsh
export ZSH=/Users/Phathdt/.oh-my-zsh
export HOMEBREW_NO_AUTO_UPDATE=1
source $ZSH/oh-my-zsh.sh

zplug "zplug/zplug", hook-build:'zplug --self-manage'
zplug "mdumitru/git-aliases"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "droctothorpe/kubecolor"
zplug "nnao45/zsh-kubectl-completion"
zplug "greymd/docker-zsh-completion"
zplug "gusaiani/elixir-oh-my-zsh"
zplug "themes/robbyrussell", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/asdf", from:oh-my-zsh

zplug load

# alias K8s
alias k=kubectl
alias vi=nvim
alias vim=nvim
alias n=nvim

# alias Git
alias gpall="git push origin --all"
alias gmerge='git checkout staging && git pull origin staging && git merge --no-edit'

alias ks='lsof -i :3000'

alias phat='git config user.name "Phathdt" && git config user.email phathdt379@gmail.com && echo "Git Phathdt"'

alias dev='cd ~/Documents/Dev/ && echo "Welcome Dev"'
alias down='cd ~/Downloads/ && echo "Welcome Downloads"'

alias v='nvim'

export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_file_bytes 1024000"

source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

export GOPATH="/Users/phathdt/go"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export PATH="$PATH:$(go env GOPATH)/bin"
export DOCKER_BUILDKIT=0

ulimit -n 2048
