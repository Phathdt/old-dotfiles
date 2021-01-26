source ~/.zplug/init.zsh
export ZSH=/Users/Phathdt/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

zplug "zplug/zplug", hook-build:'zplug --self-manage'
zplug "mdumitru/git-aliases"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "droctothorpe/kubecolor"
zplug "nnao45/zsh-kubectl-completion"
zplug "greymd/docker-zsh-completion"
zplug "phathdt/zsh-plugin-rails"
zplug "themes/robbyrussell", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/vagrant", from:oh-my-zsh

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
alias vy='git config user.name "JHVy" && git config user.email 16521470@gm.uit.edu.vn && echo "Git JHVy"'

alias dev='cd ~/Documents/Dev/ && echo "Welcome Dev"'
alias down='cd ~/Downloads/ && echo "Welcome Downloads"'

alias v='nvim'

export FZF_DEFAULT_COMMAND='fd --type f'
export PATH="/usr/local/sbin:$PATH"
# export PATH="$(yarn global bin):$PATH"
# export PATH="/Users/phathdt/.asdf/installs/nodejs/12.18.4/.npm/bin:$PATH"
# export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

[[ -s "/Users/phathdt/.gvm/scripts/gvm" ]] && source "/Users/phathdt/.gvm/scripts/gvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
. $HOME/.asdf/asdf.sh
