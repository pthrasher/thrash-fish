function wtc -d "Get random 'What the Commit' message."
    echo (curl http://whatthecommit.com/index.txt ^/dev/null)
end


function gcam -d "Git add .; and git commit -avm <what the commit msg>"
    set msg (wtc)
    git add .; and git commit -avm "$msg"
end


function groot -d "cd's to the root of the current git repo."
    cd (git rev-parse --show-cdup)
end

function gpush -d "Ensure we're not being dumb."
  if [ $argv[1] = "upstream" ]
    echo "Uhh... I don't think you've had your coffee yet. Pushing upstream??"
  else
    git push $argv
  end
end

function pull -d "git pull the branch you're on"
  set __branch (git branch --no-color | grep '*' | head -n1 | awk '{print $2}')
  echo ""
  git pull origin $__branch;
end

function push -d "git push the branch you're on"
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


function gpud -d "git pull upstream develop/development with guard to ensure im on local/develop or local/development"
    set __branch (git branch --no-color | grep '*' | head -n1 | awk '{print $2}')
    echo ""
    if [ $__branch = "develop" ]
        git pull upstream develop
    else if [ $__branch = "development" ]
        git pull upstream development
    else
        echo "You're not on branch develop or development, aborting."
    end
end
