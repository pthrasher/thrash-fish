function fish_menu_history
  fish --command "eval (history | unique | $argv)"
end
