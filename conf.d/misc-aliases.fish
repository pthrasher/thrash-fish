# It's super important to keep this file small. Since this file lives in
# conf.d, it has a startup cost.

alias .. 'cd ..'
alias seq gseq

for i in (seq 1 6)
  alias  l$i "tree -I node_modules --matchdirs --dirsfirst -ChFL     $i" ;; alias  l  l1
  alias ll$i "tree -I node_modules --matchdirs --dirsfirst -ChFupDaL $i" ;; alias ll ll1
end
