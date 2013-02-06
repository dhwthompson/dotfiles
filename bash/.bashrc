function add_path {
    if [[ $PATH != *$1* ]]; then
        export PATH=$1:$PATH;
    fi
}

add_path /usr/local/bin
add_path /Users/david/.gem/ruby/1.8/bin

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
alias upin='vagrant up && vagrant ssh'
alias gdssh='ssh -F ~/Projects/GDS/govuk/alphagov-deployment/ssh_config'
alias v='mvim .'

function se {
  if [[ -e 'bin/activate' ]]; then source bin/activate;
  else
    ls -d *_ve >/dev/null 2>&1 && source *_ve/bin/activate || echo 'Not found';
  fi
}

function st { if [[ -e '.svn' ]]; then svn status; else git st; fi }

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
