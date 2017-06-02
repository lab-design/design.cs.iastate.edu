echo $PASS | sudo openconnect vpn.iastate.edu -b --script=/etc/vpnc/vpnc-script --passwd-on-stdin --user $USER --authgroup SSLvpn

rsync --version

export SSHPASS="$PASS"

rsync -W-vvv --recursive --delete --progress \
      "$local_src" "$USER@$remote_host:$remote_dest"
