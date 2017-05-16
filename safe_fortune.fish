function safe_fortune
  if command --search fortune >/dev/null do
    fortune
  end
end
