# This has been deprecated... It should probably be replaced with something like:
# string match [(-a | --all)] [(-e | --entire)] [(-i | --ignore-case)] [(-r | --regex)] [(-n | --index)] [(-q | --quiet)] [(-v | --invert)] PATTERN [STRING...]
function __fish_sgrep -d "Call grep without honoring GREP_OPTIONS settings"
    set -l GREP_OPTIONS
    command grep $argv
end