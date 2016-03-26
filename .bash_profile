export PATH=$PATH:/Users/garethfuller/Development/scripts
export PATH=$PATH:/Users/garethfuller/Library/Android/sdk/platform-tools
export PATH=$PATH:/Users/garethfuller/Library/Android/sdk/tools
export PATH=$PATH:/Users/garethfuller/Library/Android/sdk/build-tools/23.0.2/
export PATH=$PATH:/Users/garethfuller/Development/gradle-2.12/bin

# Git aware https://github.com/jimeh/git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

#export PATH=$PATH:/usr/local/Cellar/postgresql/9.4.4/bin

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias ..="cd .."
alias ll="ls -la"

# custom
alias go="bundle exec rails server -b 0.0.0.0"
alias fresh="bundle exec rake db:drop db:create"
alias setup="DOMAIN=192.168.16.15:3000 ./bin/setup"
alias clean="fresh && setup"
alias precompile="bundle exec rake assets:precompile"
alias migrate="bundle exec rake db:migrate RAILS_ENV=development"
alias reset_test="RAILS_ENV=test bundle exec rake db:drop db:create db:schema:load test:prepare"
alias cms_export="bundle exec rake cms:export FROM=de TO=de"
alias cms_import="bundle exec rake cms:import FROM=de TO=de"
alias smoke="bundle exec rake cucumber:html_report:smoke_tests[@develop]"
alias bump="bundle exec rake app:version:bump"
alias package_clean="rm -rf node_modules/ bower_components/ tmp/ dist/ && npm cache clean && bower cache clean && npm install && bower install"

# ember rails apps
alias sr="rails s -b 0.0.0.0"
alias se="ember server --proxy http://localhost:3000"


# fix db if gets stuck
alias fixdb="rm /usr/local/var/postgres/postmaster.pid"

#cordova
alias ios="cordova prepare ios  && cordova build ios"
alias droid="cordova prepare android && cordova build android"
alias emulate="cordova emulate android"


# git
alias prune="git branch --merged develop | grep -v 'develop$' | xargs git branch -d && git remote prune origin"
alias gs="git status"
alias gc="git commit"
alias ga="git add"
alias gp="git push origin"
alias gf="git fetch"
alias gwork='git log --oneline --author="$(git config user.name)" --since="1 day ago"'
alias gb="git branch -a"
alias gd="git checkout develop"

#Open files issues
ulimit -n 65536 65536
