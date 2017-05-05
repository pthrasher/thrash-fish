function gen_atom_pkg_lockfile
  apm list --installed --bare > ~/.atom/package-list.txt
end
