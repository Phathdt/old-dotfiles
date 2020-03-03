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
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug "plugins/tmux", from:oh-my-zsh

zplug load

# alias K8s
alias k=kubectl

# alias Git
alias gpall="git push origin --all"
alias gmerge='git checkout staging && git pull origin staging && git merge --no-edit'

alias ks='lsof -i :3000'

alias ken='git config user.name "nusken" && git config user.email ken@nustechnology.com && echo "Git Ken"'
alias phat='git config user.name "Phathdt" && git config user.email phathdt379@gmail.com && echo "Git Phathdt"'

alias sra='cd ~/Documents/Working/NUS/WellStack && echo "Welcome SR_Analytics"'
alias dev='cd ~/Documents/Dev/ && echo "Welcome Dev"'
alias down='cd ~/Downloads/ && echo "Welcome Downloads"'

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="$PATH:/Users/phathdt/Documents/PersistedStore/flutter/bin"

[[ -s "/Users/phathdt/.gvm/scripts/gvm" ]] && source "/Users/phathdt/.gvm/scripts/gvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
