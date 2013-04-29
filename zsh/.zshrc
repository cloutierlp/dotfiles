ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# My custom options
unsetopt correct_all

alias editlocalconfig="subl /Hookt/hooktstudios-config/apache2/local.conf"
alias nginx-restart="sudo launchctl unload -w /System/Library/LaunchDaemons/org.nginx.plist && sudo launchctl load -w /System/Library/LaunchDaemons/org.nginx.plist"
alias myssh="cat ~/.ssh/id_rsa.pub | pbcopy; echo ssh copy success"
alias nginx-logs="tail -f -n 30 /usr/local/Cellar/nginx/1.2.6/logs/error.log"
alias gitx="open -a gitx"
alias enable-time="PS1=\"%* $PS1\""
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias mysql="mysql -u root"
alias be="bundle exec"
alias fr="bundle exec foreman run"
alias frp="bundle exec foreman run padrino rake"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias iplocal="ipconfig getifaddr en1"

unalias gm

eval "$(rbenv init -)"