## Introduction
- A simple guide to install and configure Arch-i3 on Mac

## Installation
### Update 30 May '19
- Arch Linux On Macbook Air
https://github.com/oguzhanlarca/awesome-config/tree/master/specific_platforms/arch_linux#arch-on-macbook
### Update 29 May '19
```
sudo pacman -S xorg xf86-input-synaptics acpid alsa-utils i3 w3m ranger
sudo pacman -S xorg-init NetworkManager iw htop opera firefox neofetch
sudo pacman -S pygmentize xfce4 xfce4-goodies flashplugin vim volumeicon
sudo pacman -S compton hsetroot rxvt-unicode xsel rofi noto-fonts scrot viewnior
```
yay for AUR - Arch User Repository Packages
```
git clone https://aur.archlinux.org/yay.git && cd yay/
makepkg -si
yay -S mplus-font xsettingsd lxappearance
```

It will give You i3-wm, dunst, i3lock, i3status, and suckless-tools.
If i3-wm, dunst, i3lock, i3status, and suckless-tools are not installed automatically, just install them manually. <br />
`sudo pacman -S i3-wm dunst i3lock i3status suckless-tools` <br />

- **Then install some additional packages for ubuntu like systems** <br />
`sudo apt-get install compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior`

## Copying Congifurations
```
git clone https://github.com/oguzhanlarca/awesome-config.git
```
 *awesome-config/.config/i3/config*, copy it to *~/.config/i3/*.
Do the same with all of the files inside *awesome-config* folder.
My dotfiles contains font, so refresh your fontconfig cache `fc-cache -fv` after You copy the font. <br />

**Note :** You can deploy this repository recursively using 
```
git clone https://github.com/oguzhanlarca/awesome-config.git && cp -a awesome-config/. ~
```
I recommend You to copy the configuration files one by one to make yourself have more control.

## Inspect and Edit The Configurations Files
- **~/.config/i3/config** <br />
This is the main configuration file of i3 window manager. Contains keybinding, autostart, colors, and window rules.
You to leave it default for now. I will explain it later. <br />
- **~/.config/i3status/config** <br />
```
order += "load"
order += "cpu_temperature 0"
#order += "disk /"
#order += "disk /home"
#order += "ethernet enp1s0"
order += "wireless wlp2s0"
order += "volume master"
#order += "battery 1"
order += "tztime local"
```
You can comment out the module You want to disable. For example I disable the disk, ethernet, and battery. <br />
Then now You have to configure the variable. Don't forget to change both in *order* list and in function list. <br />
```
general {
        output_format = "i3bar"
        colors = false
        markup = pango
        interval = 1
}

order += "cpu_temperature 0"
order += "load"
order += "disk /"
order += "wireless wlp2s0"
order += "volume master"
order += "tztime local"

cpu_temperature 0 {
        format = "<span background='#ff5555'>  </span><span background='#e5e9f0'> %degrees °C </span>"
        path = "/sys/class/thermal/thermal_zone0/temp"
}

load {
        format = "<span background='#50fa7b'>  </span><span background='#e5e9f0'> %5min Load </span>"
}

disk "/" {
        format = "<span background='#f1fa8c'>  </span><span background='#e5e9f0'> %free Free </span>"
}

wireless wlp2s0 {
        format_up = "<span background='#bd93f9'>  </span><span background='#e5e9f0'> %essid </span>"
        format_down = "<span background='#bd93f9'>  </span><span background='#e5e9f0'> Disconnected </span>"
}

volume master {
        format = "<span background='#ff79c6'>  </span><span background='#e5e9f0'> %volume </span>"
        format_muted = "<span background='#ff79c6'>  </span><span background='#e5e9f0'> Muted </span>"
        device = "default"
        mixer = "Master"
        mixer_idx = 0
}

tztime local {
		format = "<span background='#8be9fd'>  </span><span background='#e5e9f0'> %time </span>"
		format_time = "%a %-d %b %H:%M"
}
```

## i3status Variables
- My wireless interface is *wlp2s0* and my ethernet adapter is *enp1s0*, You can find yours by `/sbin/iwconfig` or `iwconfig` command.
- My battery id is *BAT1*, You can find yours by `ls /sys/class/power_supply/` command.
- My volume mixer is Alsa, probably also work for You. If not, You can see the manual page to configure PulseAudio.
- To use CPU temperature, You need your CPU temperature path. 
If `/sys/class/thermal/thermal_zone0/temp` doesn't work try `/sys/devices/platform/coretemp.0/temp1_input`. Still doesn't work? Ask Google :yum:
- You can add more module, just read the manual page `man i3status`. <br />

## Launching i3
Logout your current session. Then login again with i3 session. <br />

## Some Cheatsheet
- **Super + Shift + D** Launch dmenu
- **Super + D** Launch dmenu alternative called Rofi
- **Super + Enter** Launch i3-sensible-terminal, URxvt in this case
- **Super + Arrow** Change focused window, if You have two or more windows in the workspace
- **Super + Shift + Arrow** Send focused window to another edge of the screen, if You have two or more windows in the workspace
- **Super + H** and **Super + V** Change split direction to horizontal or vertical
- **Super + S** Change split direction, if You already have splitted windows
- **Super + Space** Float the window, hit it again to back to tiling mode
- **Super + 1-6** Switch to workspace 1-6
- **Super + Shift + 1-6** Send the focused window to workspace 1-6 
- **Control + Alt + Left/Right** Switch to previous or next workspace. Only works if You have 2 workspace opened
- **Super + R** Resize mode. In resize mode, hit Arrow keys to do resizing. Hit Enter to back to normal mode
- **Super + C** or **Alt + F4** Close window
- **Super + Q** Quit i3wm
- **Super + L** Lockscreen. To unlock, type your user password then hit Enter
- **Super + Shift + R** Fully reload the configuration file. Hit this after do some modifications in the config file
- More keybind look on the configuration file.

## Now What??
```
#change volume
bindsym XF86AudioRaiseVolume exec amixer -q set Master 5%+
bindsym XF86AudioLowerVolume exec amixer -q set Master 5%+
bindsym XF86AudioMute exec amixer set Master toggle
```
I use Amixer to change my volume. If it doesn't work for You, change it with Pactl, Pamixer, or anything else.
Just ask Google how to control volume via command line. <br />
```
# common apps keybinds
bindsym Print exec scrot 'Cheese_%a-%d%b%y_%H.%M.png' -e 'viewnior ~/$f'
bindsym $super+l exec i3lock -i ~/.wallpaper.png
bindsym $super+Shift+w exec firefox
bindsym $super+Shift+f exec thunar;workspace 3;focus
bindsym $super+Shift+g exec geany
```
I set keybind to launch my frequently used apps, you can remove what You don't need. 
And add what do You need. Note : i3lock need png image <br />
```
# music control
bindsym XF86AudioNext exec mpc next
bindsym XF86AudioPrev exec mpc prev
bindsym XF86AudioPlay exec mpc toggle
bindsym XF86AudioStop exec mpc stop

#autostart
exec --no-startup-id hsetroot -center ~/.wallpaper.png
exec --no-startup-id xsettingsd &
exec --no-startup-id compton -b
```
Maybe You want to add some programs to your autostart, like network manager applet, clipboard manager, power manager, conky, and some goodies.
Probably your network manager applet is nm-applet. So, if want to use it, add `exec --no-startup-id nm-applet`.
It will be loaded on next login. I don't put it on my autostart, because usually I only launch it from terminal when I want to switch SSID.
And if You come from Xfce maybe You want use its setting daemon.
Replace `exec --no-startup-id xsettingsd &` with `exec --no-startup-id xfsettingsd &`.
You will have some Xfce advantage, like mouse settings, appearance settings (LXAppearance will be overiden by this),
font settings, and some other advantage. But it will cost a thing, slightly reduce the performance. <br />
```
# window rules, you can find the window class using xprop
for_window [class=".*"] border pixel 4
assign [class=URxvt] 1
assign [class=Firefox|Transmission-gtk] 2
assign [class=Thunar|File-roller] 3
assign [class=Geany|Evince|Gucharmap|Soffice|libreoffice*] 4
assign [class=Audacity|Vlc|mpv|Ghb|Xfburn|Gimp*|Inkscape] 5
assign [class=Lxappearance|System-config-printer.py|Lxtask|GParted|Pavucontrol|Exo-helper*|Lxrandr|Arandr] 6
for_window [class=Viewnior|feh|Audacious|File-roller|Lxappearance|Lxtask|Pavucontrol] floating enable
for_window [class=URxvt|Firefox|Geany|Evince|Soffice|libreoffice*|mpv|Ghb|Xfburn|Gimp*|Inkscape|Vlc|Lxappearance|Audacity] focus
for_window [class=Xfburn|GParted|System-config-printer.py|Lxtask|Pavucontrol|Exo-helper*|Lxrandr|Arandr] focus
```
Use it to group apps on several workspace.
- Workspace 1 for Terminals
- Workspace 2 for Web
- Workspace 3 for File Manager
- Workspace 4 for Office
- Workspace 5 for Multimedia
- Workspace 6 for Settings <br />
```
# panel
bar {
    colors {
    background #2f343f
    statusline #2f343f
    separator #4b5262

    # colour of border, background, and text
    focused_workspace   #2f343f #bf616a #d8dee8
    active_workspace    #2f343f #2f343f #d8dee8
    inactive_workspace  #2f343f #2f343f #d8dee8
    urgent_workspace    #2f343f #ebcb8b #2f343f
    }
    status_command i3status
}   
```
You can modify it by yourself of course. <br />
```
# colour of border, background, text, indicator, and child_border
client.focused          #bf616a #2f343f #d8dee8 #bf616a #d8dee8
client.focused_inactive #2f343f #2f343f #d8dee8 #2f343f #2f343f
client.unfocused        #2f343f #2f343f #d8dee8 #2f343f #2f343f
client.urgent           #2f343f #2f343f #d8dee8 #2f343f #2f343f
client.placeholder      #2f343f #2f343f #d8dee8 #2f343f #2f343f
client.background       #2f343f
```
