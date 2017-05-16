set -e fish_greeting
if status --is-interactive
  function fish_greeting
      safe_fortune
  end
else
  function fish_greeting
  end
end
