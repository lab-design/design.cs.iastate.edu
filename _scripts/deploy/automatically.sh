echo $PASS | openconnect vpn.iastate.edu --passwd-on-stdin --user $USER --usergroup ISU
rsync --perms --chmod=ug+rw,Dug+x,Fug-x,o-rwx --recursive --delete --progress \
      -e 'echo $PASS | sshpass -d 1' \
      "$local_src" "$USER@$remote_host:$remote_dest"
