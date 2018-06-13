function gignored
  git ls-files -o -i --exclude-standard | grep -v node_modules
end
