set PATH /usr/local/sbin $PATH
set PATH /usr/local/bin $PATH
set PATH $HOME/bin $PATH
set PATH /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin $PATH

# Un-fuck xcode's bullshitty shitty-ness.
set -x ARCHFLAGS -Wno-error=unused-command-line-argument-hard-error-in-future

# export is required for these I think.
set -x BASEGOPATH $GOPATH
set -x EDITOR 'vim'

set VCPROMPT_FORMAT '%n:%b%m%u'
set GREP_OPTIONS '--color=auto'

