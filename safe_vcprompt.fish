function safe_vcprompt
  if command --search vcprompt >/dev/null do
    vcprompt
  else
    echo "Install vcprompt, it's missing."
  end
end