echo $PASS | sudo openconnect vpn.iastate.edu -b --passwd-on-stdin --user $USER --authgroup SSLvpn

echo Finished trying to connect to vpn

export SSHPASS="$PASS"

rsync -vvv \
      -e 'sshpass -e ssh -q' \
      "$local_src" "$USER@$remote_host:$remote_dest"
