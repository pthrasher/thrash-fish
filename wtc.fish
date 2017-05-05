function wtc -d "Get random 'What the Commit' message."
    echo (curl http://whatthecommit.com/index.txt ^/dev/null)
end
