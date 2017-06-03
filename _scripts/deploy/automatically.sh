echo Beginning openconnect

#--script doesnt let --background work
echo $PASS | sudo openconnect vpn.iastate.edu --background --passwd-on-stdin --user $USER --authgroup SSLvpn --script /_scripts/vpnc-script

rsync --version

export SSHPASS="$PASS"

rsync -W -vvv --recursive --delete --progress \
      "$local_src" "$USER@$remote_host:$remote_dest"
