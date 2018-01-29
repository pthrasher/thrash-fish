function serve
    if command --search http-server >/dev/null do
        http-server . -p 8888 -a 0.0.0.0 -i
    else
        echo "http-server not installed"
        echo "Installing now..."
        npm i -g http-server
        serve
    end
end
