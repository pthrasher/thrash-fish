function grx_auth
  if begin; test (count $argv) -gt 1; and test -d $argv[2]; end
    set -l __hostname $argv[2]
  else
    set -l __hostname "localhost:8000"
  end
  curl -L -d "{\"email\": \""$argv[1]"\", \"password\": \"password\"}" -H "Content-Type: application/json" -X POST "http://"$__hostname"/api/aaa/api-token-auth/" | sed -e 's/^.*"token":"\([^"]*\)".*$/\1/' | awk '{print "JWT "$1}' | pbcopy
end
