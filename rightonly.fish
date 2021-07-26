function rightonly -d "show lines that only exist in right file"
    set leftfile (mktemp)
    set rightfile (mktemp)
    cat $argv[1] | sort | uniq > $leftfile
    cat $argv[2] | sort | uniq > $rightfile
    comm -1 -3 $leftfile $rightfile
    rm $leftfile $rightfile
end
