function keepdir
    set __thePath (echo $argv[1] | string replace -r '/$' '')
    mkdir -p $__thePath
    touch $__thePath"/.gitkeep"
end
