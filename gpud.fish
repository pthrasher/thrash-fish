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
