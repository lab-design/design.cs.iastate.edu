echo $PASS | sudo openconnect vpn.iastate.edu -q -b --script=_scripts/vpnc-script.sh --passwd-on-stdin --user $USER --authgroup SSLvpn

rsync --version

export SSHPASS="$PASS"

rsync -W -vvv --recursive --delete --progress \
      "$local_src" "$USER@$remote_host:$remote_dest"
