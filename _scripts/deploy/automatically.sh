echo $PASS | sudo openconnect vpn.iastate.edu -b --passwd-on-stdin --user $USER --authgroup SSLvpn

echo Finished trying to connect to vpn

rsync --version

export SSHPASS="$PASS"

rsync -vvv --recursive --delete --progress \
      -e 'sshpass -e ssh' \
      "$local_src" "$USER@$remote_host:$remote_dest"
