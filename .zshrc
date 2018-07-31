# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/mballarini/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="blinks"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:/home/mballarini/dev/android-sdk/android-sdk-linux/platform-tools

# add squish path to $PATH
export PATH=$PATH:/opt/squish/bin

# add sonar path to $PATH
export PATH=$PATH:/opt/sonar/sonarqube-6.1/bin/linux-x86-64
#export PATH=$PATH:/opt/sonar/

export WORKTREE=/home/mballarini/dev/work/master
export PYTHONPATH=/home/mballarini/sdks/python-sdk/lib/python2.7/site-packages
export SQUISH_PACKAGE=/opt/squish

# emacs configuration
alias emacs='emacs -nw'
export ALTERNATE_EDITOR=emacs
export EDITOR=emacsclient
export VISUAL=emacsclient

#alias qa_push='qisrc push `python /home/mballarini/dev/work/master/qualification/buildfarm-qa/script_push.py`'
alias android_studio='/opt/android-studio/bin/studio.sh '
alias qd='qibuild depends '
alias cdw='cd /home/mballarini/dev/work/master'
alias cdb='cd /home/mballarini/dev/work/master/qualification/buildfarm-qa'
alias cdq='cd /home/mballarini/dev/work/master/tools/qibuildfarm'
alias setDeliverableFlags='python /home/mballarini/dev/work/merge-portal/developer-portal/sample_scripts/tools/setDeliverableFlags.py --user release-bot --password release32'
alias launch_jenkins='java -jar /home/mballarini/dev/jenkins/jenkins.war --argumentsRealm.passwd.user=password --argumentsRealm.roles.user=admin'
alias gfa='git fetch --all '
alias gf='git fetch '
alias gr='git rebase '
alias gs='git status '
alias gc='git checkout '
alias gg='git gui '
alias gk='gitk '
alias gka='gitk --all '
alias dr='python ~/dev/work/master/qualification/buildfarm-qa/merge_portal_tools.py --user release-bot --password release32 --merge-portal-url merge.aldebaran.lan:3002 --delete-reports --deliverable-id'
alias launch_jenkins='java -jar /home/mballarini/dev/jenkins/jenkins.war --argumentsRealm.passwd.user=password --argumentsRealm.roles.user=admin'
alias mop='fab -f /home/mballarini/dev/work/master-of-puppets/master-of-puppets.py'
alias reset_slaves_robots_connection='ansible-playbook ~/dev/ansible/playbook_reset_slave_robots_communication.yml'
alias pycharm='/opt/pycharm/bin/pycharm.sh'

# source ~/catkin_ws/devel/setup.zsh

# The Fuck configuration !
# eval $(thefuck --alias)

function qicd {
  p=$(python -m 'qicd' $1)
  if [[ $? -ne 0 ]]; then
    return
  fi
  cd ${p}
}
