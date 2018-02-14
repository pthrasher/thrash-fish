function grx_auth
  if test (count $argv) -gt 1
    set __hostname $argv[2]
  else
    set __hostname "localhost:8000"
  end
  set -l __url 'http://'$__hostname'/api/aaa/api-token-auth/'
  set -l __data '{"email": "'$argv[1]'", "password": "password"}'
  curl -L -d $__data -H 'Content-Type: application/json' -X POST $__url | sed -e 's/^.*"token":"\([^"]*\)".*$/\1/' | awk '{print "JWT "$1}' | pbcopy
  echo "Token copied to clipboard."
end
