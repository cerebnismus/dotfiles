# Wireless Network Configuration
- https://wiki.archlinux.org/index.php/Wireless_network_configuration#Get_the_name_of_the_interface
```
$ ip link

$ /sbin/iw wlan0 link

$ sudo /sbin/iw wlan0 scan

$ sudo -s
[sudo] password for peter: 

$ wpa_passphrase FSOCIETY >> /etc/wpa_supplicant.conf 
...type in the passphrase and hit enter...

$ cat /etc/wpa_supplicant.conf 
# reading passphrase from stdin
network={
	ssid="FSOCIETY"
	#psk="P4zzw0rd1!"
	psk=4dfe1c985520d26a13e932bf0acb1d4580461dd854ed79ad1a88ec221a802061
}

sudo wpa_supplicant FSOCIETY >> /etc/wpa_supplicant.conf
```
# SpaceVIm
```
rm -rf ~/.vim* ~/.config/*vim* ~/.config/*Vim* ~/.SpaceVim ~/.cache/*vim* ~/.cache/*Vim* ~/.cache/neosnippet ~/.local/share/*vim*
sudo pacman -S vim
curl -sLf https://spacevim.org/install.sh | bash
```
