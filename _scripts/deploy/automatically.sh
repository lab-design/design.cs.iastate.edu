echo $PASS | openconnect vpn.iastate.edu --passwd-on-stdin --user $USER --authgroup ISU
echo Finished trying to connect to vpn
rsync --perms --chmod=ug+rw,Dug+x,Fug-x,o-rwx --recursive --delete --progress \
      -e 'echo $PASS | sshpass -d 1' \
      "$local_src" "$USER@$remote_host:$remote_dest"
