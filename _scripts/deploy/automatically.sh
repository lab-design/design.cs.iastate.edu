echo $PASS | sudo openconnect vpn.iastate.edu -b --passwd-on-stdin --user $USER --authgroup SSLvpn

echo Finished trying to connect to vpn

export SSHPASS="$PASS"

rsync -vvv --perms --chmod=ug+rw,Dug+x,Fug-x,o-rwx --recursive --delete --progress \
      -e 'sshpass -e ssh' \
      "$local_src" "$USER@$remote_host:$remote_dest"
