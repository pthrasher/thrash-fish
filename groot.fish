function groot -d "cd's to the root of the current git repo."
  cd (git rev-parse --show-cdup)
end
