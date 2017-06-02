echo $SSHPASS | sudo openconnect vpn.iastate.edu -b --passwd-on-stdin --user $USER --authgroup SSLvpn

echo Finished trying to connect to vpn

rsync --version

rsync -vvv --perms --chmod=ug+rw,Dug+x,Fug-x,o-rwx --recursive --delete --progress \
      -e 'sshpass -e ssh -q' \
      "$local_src" "$USER@$remote_host:$remote_dest"
