function opush -d "git push the branch you're on"
  set __branch (git branch --no-color | grep '*' | head -n1 | awk '{print $2}')
  if [ $__branch = 'master' ]
    echo 'You must explicitly type `git push origin master`'
  else if [ $__branch = 'staging' ]
    echo 'You must explicitly type `git push origin staging`'
  else if [ $__branch = 'production' ]
    echo 'You must explicitly type `git push origin production`'
  else
    echo ""
    if [ $argv[1] = '--force' ]
      git push origin $__branch --force;
    else
      git push origin $__branch;
    end
  end
end
