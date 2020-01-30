alias ll='ls -l'
alias la='ls -la'
alias lf='ls -F'
alias laf='ls -aF'
alias watch='watch '    

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home/
alias setjavahome='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

alias proxoff='brew services stop cntlm'
alias proxon='brew services start cntlm'
alias vpn='sudo openconnect -v vpnportal.kpn.com/sms -u bart502'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# kunectl and friends
alias kc=kubectl
#alias swlo=$(kubectl config use-context local-docker)

alias swacc="export KUBECONFIG=~/.kube/rae-acc_kube.config && export TILLER_NAMESPACE=rae-acc"
alias swtst="export KUBECONFIG=~/.kube/rae-test_kube.config && export TILLER_NAMESPACE=rae-tst"
alias swprd="export KUBECONFIG=~/.kube/rae-prod_kube.config && export TILLER_NAMESPACE=rae-prd"
alias swown="export KUBECONFIG=~/.kube/config && export TILLER_NAMESPACE=bart502"

alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export GRAPHVIZ_DOT=/usr/local/bin/dot

export GRADLE_HOME=/Users/ton/tools/gradle-4.4.1
export M2_HOME=/Users/ton/tools/apache-maven-3.5.2
export PATH=$GRADLE_HOME/bin:$M2_HOME/bin:$JAVA_HOME/bin:$PATH
export PATH=$PATH:/$HOME/bin

#source /usr/local/etc/bash_completion.d/git-prompt.sh
#export PS1='\w$(__git_ps1) : '

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

##
# Your previous /Users/ton/.bash_profile file was backed up as /Users/ton/.bash_profile.macports-saved_2018-01-15_at_21:58:45
##

# MacPorts Installer addition on 2018-01-15_at_21:58:45: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# -------------------------------------------------------
# fix for Python pip install issue 20190212
# -------------------------------------------------------
export SSL_CERT_FILE=/Users/ton/certificates/cacert.pem
export REQUESTS_CA_BUNDLE=/Users/ton/certificates/cacert.pem
# not clear if this third one is also needed...
export WEBSOCKET_CLIENT_CA_BUNDLE=/Users/ton/certificates/cacert.pem
# -------------------------------------------------------
# fix for Python pip install issue 20190212
# -------------------------------------------------------

# --------------------------
# RAE additions 5 june 2018
# --------------------------
export RAE_HOME=~/stash/DSL
export PATH=${PATH}:${RAE_HOME}/rae-dev-toolbox
export REQUESTS_CA_BUNDLE=${RAE_HOME}/rae-dev-toolbox/certificates

# uncomment for easy cd into RAE folders
# export CDPATH=.:${RAE_HOME}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

source <(kubectl completion bash)

export GROOVY_HOME=/usr/local/opt/groovy/libexec

export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

eval "$(jenv init -)"

export TILLER_NAMESPACE=$(k8-get-current-namespace)

# add openvpn: DSH 202001
export PATH=${PATH}:/usr/local/Cellar/openvpn/2.4.8/sbin

