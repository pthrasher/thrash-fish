set PATH /usr/local/bin $PATH
set PATH /usr/local/sbin $PATH
set PATH $HOME/bin $PATH

# Un-fuck xcode's bullshitty shitty-ness.
set -x ARCHFLAGS -Wno-error=unused-command-line-argument-hard-error-in-future

# export is required for these I think.
set -x BASEGOPATH $GOPATH
set -x EDITOR 'atom -nw'

set NODE_PATH /usr/local/lib/node_modules $NODE_PATH
set VCPROMPT_FORMAT '%n:%b%m%u'
set VIRTUALFISH_COMPAT_ALIASES 'on'
set GREP_OPTIONS '--color=auto'

nvm current > /dev/null

set PATH $PATH (yarn global bin)
