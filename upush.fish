function upush -d "git push the branch you're on"
    set __branch (git branch --no-color | grep '*' | head -n1 | awk '{print $2}')
    if [ $__branch = 'master' ]
        echo 'You must explicitly type `git push origin master`'
    else if echo $__branch | grep 'release-' >/dev/null

        echo 'You must explicitly type `git push origin '$__branch'`'
    else
        echo ""
        if [ $argv[1] = 'force' ]
            git push upstream $__branch --force

        else
            git push upstream $__branch
        end
    end
end
