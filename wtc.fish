function wtc -d "Get random 'What the Commit' message."
    echo (curl http://whatthecommit.com/index.txt 2>/dev/null)
end
