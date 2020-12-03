function leftonly -d "show lines that only exist in both files"
    cat $argv[1] | sort | uniq > /tmp/__leftonly_left_sorted.txt
    cat $argv[2] | sort | uniq > /tmp/__leftonly_right_sorted.txt
    comm -2 -3 /tmp/__leftonly_left_sorted.txt /tmp/__leftonly_right_sorted.txt
    rm /tmp/__leftonly_left_sorted.txt /tmp/__leftonly_right_sorted.txt
end
