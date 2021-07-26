function bothonly -d "show lines that only exist in both files"
    set leftfile (mktemp)
    set rightfile (mktemp)
    cat $argv[1] | sort | uniq > $leftfile
    cat $argv[2] | sort | uniq > $rightfile
    comm -1 -2 $leftfile $rightfile
    rm $leftfile $rightfile
end
