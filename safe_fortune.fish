function safe_fortune
  if command --search fortune >/dev/null do
    fortune
  else
    echo "Install fortune, it's missing."
  end
end
