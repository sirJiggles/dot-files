export PATH=$PATH:/Users/garethfuller/Development/scripts
#export PATH=$PATH:/usr/local/Cellar/postgresql/9.4.4/bin

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias ..="cd .."
alias ll="ls -la"

# custom
alias go="rails server -b 0.0.0.0"
alias fresh="rake db:drop db:create"
alias setup="DOMAIN=192.168.16.15:3000 ./bin/setup"
alias precompile="rake assets:precompile"
alias migrate="rake db:migrate RAILS_ENV=development"
alias reset_test="RAILS_ENV=test rake db:drop db:create db:schema:load test:prepare"
alias cms_export="rake cms:export FROM=de TO=de"
alias smoke="rake cucumber:html_report:smoke_tests[@develop]"

# fix db if gets stuck
alias fixdb="rm /usr/local/var/postgres/postmaster.pid"

#cordova
alias ios="cordova prepare ios && cordova build ios"

# git
alias prune="git branch --merged develop | grep -v 'develop$' | xargs git branch -d && git remote prune origin"
alias gs="git status"
alias gc="git commit"
alias ga="git add"
alias gp="git push origin"
alias gf="git fetch"

# Open files issues
ulimit -n 65536 65536
