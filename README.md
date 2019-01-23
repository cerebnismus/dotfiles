# Awesome-Config Script

## What is awesome-config?

- awesome-config is a script that  autoconfigures a fully-functioning
and minimal terminal-and-vim-based Crossplat-Unix/Linux environment.

## Installation:

- On an Unix/Linux-based OS as root, run the following commands:

```
curl -LO https://raw.githubusercontent.com/oguzhanlarca/awesome-config/master/awesome-config.sh
./awesome-config.sh run
```

## Ubuntu 18.04 LTS Linux configuration

![screen](https://cdn1.imggmi.com/uploads/2018/9/30/c39e757a5bc0d53ba4a7bcad51f2ed22-full.png)

## Ubuntu Dependencies

- sudo apt update && sudo apt upgrade && sudo apt dist-upgrade

- sudo apt install network-manager rofi snap dbus scrot pavucontrol gnome-terminal gnome-nettool gnome-calendar py3status fonts-font-awesome vim zsh zsh-theme-powerlevel9k

- sudo snap install chromium spotify

- open $gnome-session-properties and click Add;
- Name: Network Manager Applet
- Command: /usr/bin/nm-applet --autostart
- Comment: System tray icon for managing Networks

- cd ~/Documents/ && git clone https://github.com/kuragxon/i3spotifystatus.git

- copy config & i3status to /home/$USER/.config/i3 and REBOOT

## Mentor of Project

- [Savaş M. KAPLAN](https://github.com/Coldrain)
