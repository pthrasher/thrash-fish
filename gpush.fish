function gpush -d "Ensure we're not being dumb."
  if [ $argv[1] = "upstream" ]
    echo "Uhh... I don't think you've had your coffee yet. Pushing upstream??"
  else
    git push $argv
  end
end
