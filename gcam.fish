function gcam -d "Git add .; and git commit -avm <what the commit msg>"
    set msg (wtc)
    git add .; and git commit -avm "$msg"
end
