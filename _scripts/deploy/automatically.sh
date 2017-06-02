ip tuntap add vpn0 mode tun

echo $PASS | openconnect vpn.iastate.edu -i vpn0 --passwd-on-stdin --user $USER --authgroup SSLvpn -s 'sudo -E /etc/vpnc/vpnc-script'
echo Finished trying to connect to vpn
rsync --perms --chmod=ug+rw,Dug+x,Fug-x,o-rwx --recursive --delete --progress \
      -e 'echo $PASS | sshpass -d 1' \
      "$local_src" "$USER@$remote_host:$remote_dest"
