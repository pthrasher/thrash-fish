set -e fish_greeting
if status --is-interactive
    function fish_greeting
        fortune
    end
end
