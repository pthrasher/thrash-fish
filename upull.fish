function upull -d "git pull the branch you're on"
  set __branch (current_branch)
  echo ""
  git pull upstream $__branch;
end
