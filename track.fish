function track
  if [ (count $argv) -lt 2 ] 
    set __remote upstream
  else
    set __remote $argv[2]
  end
  echo $argv[1] $__remote/$argv[1]
end