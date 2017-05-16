function serve
  if command --search http-server >/dev/null do
    http-server . -p 8000 -a 0.0.0.0 -i
  end
end