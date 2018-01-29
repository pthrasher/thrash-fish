function current_branch
  echo (git branch --no-color | grep '*' | head -n1 | awk '{print $2}' | tr -d ' \n\r\t')
end