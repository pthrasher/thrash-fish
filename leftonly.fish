function leftonly -d "show lines that only exist in left file"
    set leftfile (mktemp)
    set rightfile (mktemp)
    cat $argv[1] | sort | uniq > $leftfile
    cat $argv[2] | sort | uniq > $rightfile
    comm -2 -3 $leftfile $rightfile
    rm $leftfile $rightfile
end
