function __fish_git_branches
  command git branch --no-color -a 2>/dev/null | __fish_sgrep -v ' -> ' | grep -v 'remotes' | sed -e 's/^..//' -e 's/^remotes\///'
end