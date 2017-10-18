function opull -d "git pull the branch you're on"
  set __branch (git branch --no-color | grep '*' | head -n1 | awk '{print $2}')
  echo ""
  git pull origin $__branch;
end
