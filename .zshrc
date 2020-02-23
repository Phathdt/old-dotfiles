export ZSH=/Users/Phathdt/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(
  git
  zsh-wakatime
  kubectl
)

source $ZSH/oh-my-zsh.sh
POWERLEVEL9K_MODE='compatible'

alias r='rails'
alias n='nvim'
alias t='tmux'
alias stt='git status'

# alias Rails
alias rds="rake db:seed"
alias rdm="rake db:migrate"
alias rdc="rake db:create"
alias rds="rake db:seed"
alias rdmr="rake db:migrate:redo"
alias rr="rake routes"
alias s="rails s"
alias c="rails c"
alias sb="rails s -b 0.0.0.0"

# alias K8s
alias k=kubectl
complete -F __start_kubectl k

# alias Git
alias p="git push"
alias pall="git push origin --all"
alias gmerge='git checkout staging && git pull origin staging && git merge --no-edit'

alias ks='lsof -i :3000'

alias ken='git config user.name "nusken" && git config user.email ken@nustechnology.com && echo "Git Ken"'
alias phat='git config user.name "Phathdt" && git config user.email phathdt379@gmail.com && echo "Git Phathdt"'

alias sra='cd ~/Documents/Working/NUS/WellStack && echo "Welcome SR_Analytics"'
alias ec2='cd ~/Documents/Working/NUS/ec2_automation_script && echo "Ec2 script"'
alias dev='cd ~/Documents/Dev/ && echo "Welcome Dev"'
alias down='cd ~/Downloads/ && echo "Welcome Downloads"'

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias hrkdroid='heroku accounts:set droidmaxxx && echo "Heroku Droidmaxxx"'
alias hrkluis='heroku accounts:set luis && echo "Heroku Luis"'

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="$PATH:/Users/phathdt/Documents/PersistedStore/flutter/bin"

[[ -s "/Users/phathdt/.gvm/scripts/gvm" ]] && source "/Users/phathdt/.gvm/scripts/gvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
