function add_path {
    if [[ $PATH != *$1* ]]; then
        export PATH=$1:$PATH;
    fi
}

add_path /usr/local/bin

export EDITOR=/usr/bin/vi

export AWS_AUTO_SCALING_HOME=/usr/local/AutoScaling
export AWS_AUTO_SCALING_URL='https://autoscaling.eu-west-1.amazonaws.com'
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export AWS_CREDENTIAL_FILE=~/.aws-credentials
add_path ${AWS_AUTO_SCALING_HOME}/bin

alias ls='ls -G'
alias py=ipython
alias gdm='git diff | mate'
alias gap='git add --patch'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gp='git pull --ff-only'
alias gt='cd "$(git rev-parse --show-toplevel)"'
alias gx='gitx'

alias upin='vagrant up && vagrant ssh'
alias v='mvim .'
alias st='git st'
alias json='python -m json.tool'
alias tm='tmux attach 2>/dev/null || tmux'

# Bundler aliases
alias be='bundle exec'
alias ber='bundle exec rake'
alias bet='bundle exec ruby -Itest'

if [[ -z $(command -v ack) && -s $(command -v ack-grep) ]]; then
  alias ack=ack-grep
fi

function se {
  if [[ -e 'bin/activate' ]]; then source bin/activate;
  else
    ls -d *_ve >/dev/null 2>&1 && source *_ve/bin/activate || echo 'Not found';
  fi
}

function t {
screen -X title $(basename `pwd`) >/dev/null || printf "\033k$(basename `pwd`)\033\\"
}

function gpop {
  local oldbranch=$(git rev-parse --abbrev-ref HEAD)
  git checkout master && git branch -d $oldbranch
}

if command -v brew >/dev/null 2>&1; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
fi
