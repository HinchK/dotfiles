alias sudo='sudo HOME="$HOME" SSH_CLIENT="$SSH_CLIENT" SSH_TTY="$SSH_TTY"'
# alias grep='grep --color=auto'
alias ls='ls -G'
alias svim='sudo vim'
alias fuck='sudo $(history -p \!\!)' #https://twitter.com/liamosaur/status/506975850596536320/
alias gitclean='git branch --merged master | grep -v "\smaster$" | grep -v "*" | xargs git branch -d'
alias fixcs='php-cs-fixer fix'
alias latest='git tag | sort -V | tail -n 1'
alias myip='curl -sS https://ip.reenlokum.nl'
alias service='sudo service'
alias dclean='docker images -q --filter "dangling=true" | xargs docker rmi  > /dev/null 2>&1'
alias punit='phpunit --no-coverage'
alias openvpn='sudo openvpn'
# Git
alias commit="git add . && git commit -m"
alias gcommit="git add . && git commit"
alias wip="commit wip"
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias gl="git log --oneline --decorate --color"
alias gnuke="git clean -df && git reset --hard"

alias d=docker
alias dc=docker-compose

complete -F _docker d
complete -F _docker_compose dc

alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
weather() { curl -4 wttr.in/${1:-san_diego} ;}
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"

# Laravel
alias a="php artisan"
alias ams="php artisan migrate:fresh --seed"