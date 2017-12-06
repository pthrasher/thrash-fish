function fish_prompt
  set_color normal
  echo ''
  echo -n '    '
  set_color $fish_color_cwd
  echo -n '¬'
  echo -n ' '
  set_color normal
  
  if [ $TERM_PROGRAM != 'Hyper' ]
    echo -n (basename (prompt_pwd))
  end
  
  set_color $fish_color_cwd
  echo -n ': '
  set_color normal
end
