function __fish_git_branches
  command git branch --no-color -a ^/dev/null | __fish_sgrep -v ' -> ' | grep -v 'remotes' | sed -e 's/^..//' -e 's/^remotes\///'
end