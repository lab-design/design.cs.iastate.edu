echo $PASS | sudo openconnect vpn.iastate.edu -b --passwd-on-stdin --user $USER --authgroup SSLvpn

echo Finished trying to connect to vpn

rsync -vvv --perms --chmod=ug+rw,Dug+x,Fug-x,o-rwx --recursive --delete --progress \
      -e 'echo $PASS | sshpass -d 1 ssh -q' \
      "$local_src" "$USER@$remote_host:$remote_dest"
