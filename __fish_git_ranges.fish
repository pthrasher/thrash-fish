function __fish_git_ranges
  set -l from (commandline -ot | perl -ne 'if (index($_, "..") > 0) { my @parts = split(/\.\./); print $parts[0]; }')
  if test -z "$from"
    __fish_git_branches
    return 0
  end

  set -l to (commandline -ot | perl -ne 'if (index($_, "..") > 0) { my @parts = split(/\.\./); print $parts[1]; }')
  for from_ref in (__fish_git_heads | __fish_sgrep -e "$from")
    for to_ref in (__fish_git_heads | __fish_sgrep -e "$to")
      printf "%s..%s\n" $from_ref $to_ref
    end
  end
end