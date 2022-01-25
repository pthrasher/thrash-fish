set PATH -gx $HOME/bin /usr/local/bin /usr/local/sbin $PATH $HOME/.krew/bin

# Un-fuck xcode's bullshitty shitty-ness.
# set -x ARCHFLAGS -Wno-error=unused-command-line-argument-hard-error-in-future

# export is required for these I think.
set -x BASEGOPATH $GOPATH
set -x EDITOR 'vim'

set VCPROMPT_FORMAT '%n:%b%m%u'
set GREP_OPTIONS '--color=auto'


set -x GK_SSH_HOST clsomimx6@key.thrasher.network
set -x GK_SSH_KEY ~/.ssh/gkd
set -x GK_SSH_NO_REBOOT yes

source /usr/local/opt/asdf/asdf.fish

