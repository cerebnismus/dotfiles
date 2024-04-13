#### Getting Started


## Update: 2024-04-13 22:49:47
Added: # ~/.bash_logout: executed by bash(1) when login shell exits.
Added: 
Added: # when leaving the console clear the screen to increase privacy
Added: 
Added: if [ "$SHLVL" = 1 ]; then
Added: [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
Added: fi
Added: # ~/.bashrc: executed by bash(1) for non-login shells.
Added: # see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
Added: # for examples
Added: 
Added: # If not running interactively, don't do anything
Added: case $- in
Added: *i*) ;;
Added: *) return;;
Added: esac
Added: 
Added: # don't put duplicate lines or lines starting with space in the history.
Added: # See bash(1) for more options
Added: HISTCONTROL=ignoreboth
Added: 
Added: # append to the history file, don't overwrite it
Added: shopt -s histappend
Added: 
Added: # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
Added: HISTSIZE=1000
Added: HISTFILESIZE=2000
Added: 
Added: # check the window size after each command and, if necessary,
Added: # update the values of LINES and COLUMNS.
Added: shopt -s checkwinsize
Added: 
Added: # If set, the pattern "**" used in a pathname expansion context will
Added: # match all files and zero or more directories and subdirectories.
Added: #shopt -s globstar
Added: 
Added: # make less more friendly for non-text input files, see lesspipe(1)
Added: [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
Added: 
Added: # set variable identifying the chroot you work in (used in the prompt below)
Added: if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
Added: debian_chroot=$(cat /etc/debian_chroot)
Added: fi
Added: 
Added: # set a fancy prompt (non-color, unless we know we "want" color)
Added: case "$TERM" in
Added: xterm-color|*-256color) color_prompt=yes;;
Added: esac
Added: 
Added: # uncomment for a colored prompt, if the terminal has the capability; turned
Added: # off by default to not distract the user: the focus in a terminal window
Added: # should be on the output of commands, not on the prompt
Added: #force_color_prompt=yes
Added: 
Added: if [ -n "$force_color_prompt" ]; then
Added: if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
Added: # We have color support; assume it's compliant with Ecma-48
Added: # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
Added: # a case would tend to support setf rather than setaf.)
Added: color_prompt=yes
Added: else
Added: color_prompt=
Added: fi
Added: fi
Added: 
Added: if [ "$color_prompt" = yes ]; then
Added: PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
Added: else
Added: PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
Added: fi
Added: unset color_prompt force_color_prompt
Added: 
Added: # If this is an xterm set the title to user@host:dir
Added: case "$TERM" in
Added: xterm*|rxvt*)
Added: PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
Added: ;;
Added: *)
Added: ;;
Added: esac
Added: 
Added: # enable color support of ls and also add handy aliases
Added: if [ -x /usr/bin/dircolors ]; then
Added: test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
Added: alias ls='ls --color=auto'
Added: #alias dir='dir --color=auto'
Added: #alias vdir='vdir --color=auto'
Added: 
Added: alias grep='grep --color=auto'
Added: alias fgrep='fgrep --color=auto'
Added: alias egrep='egrep --color=auto'
Added: fi
Added: 
Added: # colored GCC warnings and errors
Added: #export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
Added: 
Added: # some more ls aliases
Added: alias ll='ls -alF'
Added: alias la='ls -A'
Added: alias l='ls -CF'
Added: 
Added: # Add an "alert" alias for long running commands.  Use like so:
Added: #   sleep 10; alert
Added: alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
Added: 
Added: # Alias definitions.
Added: # You may want to put all your additions into a separate file like
Added: # ~/.bash_aliases, instead of adding them here directly.
Added: # See /usr/share/doc/bash-doc/examples in the bash-doc package.
Added: 
Added: if [ -f ~/.bash_aliases ]; then
Added: . ~/.bash_aliases
Added: fi
Added: 
Added: # enable programmable completion features (you don't need to enable
Added: # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
Added: # sources /etc/bash.bashrc).
Added: if ! shopt -oq posix; then
Added: if [ -f /usr/share/bash-completion/bash_completion ]; then
Added: . /usr/share/bash-completion/bash_completion
Added: elif [ -f /etc/bash_completion ]; then
Added: . /etc/bash_completion
Added: fi
Added: fi
Added: 
Added: neofetch
Added: conky.config = {
Added: update_interval = 1,
Added: total_run_times = 0,
Added: net_avg_samples = 1,
Added: cpu_avg_samples = 1,
Added: imlib_cache_size = 0,
Added: double_buffer = true,
Added: no_buffers = true,
Added: font = 'FuraCode Nerd Font:pixelsize=11',
Added: use_xft = true,
Added: override_utf8_locale = true,
Added: text_buffer_size = 2048,
Added: own_window = true,
Added: own_window_type = 'normal',
Added: own_window_transparent = false,
Added: own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
Added: own_window_argb_visual = true,
Added: own_window_argb_value = 178,
Added: own_window_colour = '#000000',
Added: minimum_size = '360 500',
Added: alignment = 'middle_left',
Added: gap_x = 15,
Added: gap_y = 98,
Added: draw_shades = false,
Added: default_color = '#ffffff',
Added: default_shade_color = '#000000',
Added: color1 = '#1CEBD3',
Added: color2 = '#1B87AB',
Added: color3 = '#569AE0',
Added: color4 = '#CEE1F8',
Added: color5 = '#E80DF5',
Added: color6 = '#A00BBF'
Added: }
Added: 
Added: conky.text = [[
Added: ${color4}${font ConkySymbols:size=14}a${font} S Y S T E M » $hr ${color}
Added: 
Added: ${goto 10}OS:${color2}${alignr 10}${exec cat /etc/*-release | grep 'DISTRIB' | awk -F '=' 'NR==1 {print $2}'} ${exec cat /etc/*-release | grep 'VERSION' | awk -F '"' 'NR==2 {print $2}'}${color}
Added: ${goto 10}Shell:${color2}${alignr 10}${exec gnome-shell --version}${color}
Added: ${goto 10}${color}Kernel:${color2}${alignr 10}${kernel}${color}
Added: ${goto 10}Datetime: ${color2}${alignr 10}${time %A} ${time %d %B %Y} ${time %I}:${time %M %p}${color}
Added: ${goto 10}Uptime:${color6}${alignr 10}$uptime${color}
Added: 
Added: ${color4}${font ConkySymbols:size=14}f${font} C P U  &  G P U  &  M E M O R Y » $hr${color}
Added: 
Added: ${goto 10}CPU:${color2}${alignr 10}${exec cat /proc/cpuinfo|grep 'model name'|awk -F ' ' 'NR==1 {print $6}'}${color}
Added: ${goto 10}Active Governor: ${color2}${alignr 10}${execi 1 cut -b 1-20 /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor}${color}
Added: ${goto 10}Clock Rate:${color6}${alignr 10}${freq_g 1}GHz${color}
Added: ${goto 10}CPU Temp:${color6}${alignr 10}${exec cut -b 1-2 /sys/class/thermal/thermal_zone0/temp}°C${color}
Added: 
Added: ${goto 10}Graphics cards:${color2}${alignr 10}${exec hwinfo --gfxcard | grep "Device" | awk -F '"' 'NR==1{print $2}'}${color}
Added: ${goto 10}Mesa Driver:${color2}${alignr 10}${execi 600 glxinfo | grep "OpenGL version string" | awk 'NR==1{print $8}' | cut -c 1-8}${color}
Added: ${goto 10}X.Org:${color2}${alignr 10}${exec dpkg -l | grep xserver-xorg-core | awk 'NR==1{print $3}' | cut -c 3-10}${color}
Added: 
Added: ${goto 10}RAM: ${color6}$mem${color} / ${color2}$memmax ${color6}${alignr 10}$memperc% ${color1}${membar 8,120}${color}
Added: ${goto 10}SWAP: ${color6}$swap${color} / ${color2}$swapmax ${color6}${alignr 10}$swapperc% ${color1}${swapbar 8,120}${color}
Added: 
Added: ${color4}${font ConkySymbols:size=14}b${font} N E T W O R K » $hr${color}
Added: 
Added: ${goto 10}Hostname: ${color2}${alignr 10}${exec hostname}${color}
Added: ${goto 10}IP LAN: ${color2}${alignr 10}${addr enp2s0}${color}
Added: ${goto 10}IP WAN: ${color2}${alignr 10}${exec curl ipinfo.io/ip}${color}
Added: ${goto 10}IP WLAN: ${color2}${alignr 10}${addr wlp3s0}${color}
Added: ${goto 10}WiFi SSID: ${color2}${alignr 10}${wireless_essid wlp3s0}${color}
Added: ${goto 10}WiFi Signal: ${alignr 10}${color6}${wireless_link_qual_perc wlp3s0} %${color}
Added: 
Added: ${goto 10}Upload Speed: ${alignr 10}${color6}${upspeed enp2s0}${color} ${color5}${upspeedgraph enp2s0 10,120 fc8c3b c6396b -t}${color}
Added: ${goto 10}Down Speed: ${alignr 10}${color6}${downspeed enp2s0}${color} ${color5}${downspeedgraph enp2s0 10,120 fc8c3b c6396b -t}${color}
Added: ${voffset -5}
Added: 
Added: ${goto 10}Total Up: ${goto 80}${color2}${totalup enp2s0} ${color}${alignr 20}Total Down: ${alignr 10}${color2}${totaldown enp2s0}
Added: 
Added: ${color4}${font ConkySymbols:size=14}k${font} S T O R A G E » $hr${color}
Added: 
Added: ${goto 10}SSD:${alignc -20}${color6}${fs_used /}${color} / ${color2}${fs_size /} ${color6}${alignr 10}${fs_used_perc /}%${color}
Added: ${goto 10}${color1}${fs_bar 8,300 /}${color}
Added: 
Added: ${goto 10}Disk I/O Read:  ${color6}${alignr 10}${diskio_read} ${color5}${diskiograph_read 10,120 ADFF2F 32CD32 750}${color}
Added: ${goto 10}Disk I/O Write: ${color6}${alignr 10}${diskio_write}${color} ${color5}${diskiograph_write 10,120 FF0000 8B0000 750}${color}
Added: 
Added: ${color4}${font ConkySymbols:size=14}n${font} P R O C E S S E S » $hr${color}
Added: 
Added: ${goto 10}${color}NAME${goto 160}PID${goto 230}CPU%${goto 310}MEM${color}${font}
Added: ${color4}${goto 10}${stippled_hr}${color}
Added: ${goto 10}${color1}${top name 1}${color6}${font}${goto 140}${top pid 1}${goto 225}${top cpu 1}${goto 295}${top mem_res 1}
Added: ${goto 10}${color1}${top name 2}${color6}${font}${goto 140}${top pid 2}${goto 225}${top cpu 2}${goto 295}${top mem_res 2}
Added: ${goto 10}${color1}${top name 3}${color6}${font}${goto 140}${top pid 3}${goto 225}${top cpu 3}${goto 295}${top mem_res 3}
Added: ${goto 10}${color1}${top name 4}${color6}${font}${goto 140}${top pid 4}${goto 225}${top cpu 4}${goto 295}${top mem_res 4}
Added: ${goto 10}${color1}${top name 5}${color6}${font}${goto 140}${top pid 5}${goto 225}${top cpu 5}${goto 295}${top mem_res 5}
Added: 
Added: ${goto 10}${color}Processes: ${color6}$processes ${alignr 10}${color}Running: ${color6}$running_processes
Added: 
Added: ]];
Added: 22381f78-7ba1-41cc-94b8-3a2eca9a97c5
Added: 5711cb03-a63a-44e8-bf0b-ed6fb847c38b
Added: # ~/.profile: executed by the command interpreter for login shells.
Added: # This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
Added: # exists.
Added: # see /usr/share/doc/bash/examples/startup-files for examples.
Added: # the files are located in the bash-doc package.
Added: 
Added: # the default umask is set in /etc/profile; for setting the umask
Added: # for ssh logins, install and configure the libpam-umask package.
Added: #umask 022
Added: 
Added: # if running bash
Added: if [ -n "$BASH_VERSION" ]; then
Added: # include .bashrc if it exists
Added: if [ -f "$HOME/.bashrc" ]; then
Added: . "$HOME/.bashrc"
Added: fi
Added: fi
Added: 
Added: # set PATH so it includes user's private bin if it exists
Added: if [ -d "$HOME/bin" ] ; then
Added: PATH="$HOME/bin:$PATH"
Added: fi
Added: 
Added: # set PATH so it includes user's private bin if it exists
Added: if [ -d "$HOME/.local/bin" ] ; then
Added: PATH="$HOME/.local/bin:$PATH"
Added: fi
Added: 
Added: TZ='Europe/Istanbul'; export TZ
Added: 
Added: xset s off
Added: xset -dpms
Added: xrandr --output eDP-1 --off
Added: conky -d -c ~/.conkyrc
Added: #xrandr --auto && xrandr --output eDP-1 --off
Added: #volumeicon
Added: # Generated by /usr/bin/select-editor
Added: SELECTED_EDITOR="/usr/bin/nvim"
Added: #### Getting Started
Added: 
Added: ## shadow
Added: shadow = true;
Added: no-dnd-shadow = true;
Added: no-dock-shadow = true;
Added: clear-shadow = true;
Added: shadow-radius = 12;
Added: shadow-offset-x = -12;
Added: shadow-offset-y = -12;
Added: shadow-opacity = 0.95;
Added: shadow-red = 0.18;
Added: shadow-green = 0.20;
Added: shadow-blue = 0.25;
Added: shadow-exclude = [ "class_g = 'Cairo-clock'" ,
Added: "class_g = 'CoverGloobus'",
Added: "class_g = 'Tilda'",
Added: "class_g = 'Conky'",
Added: "class_g ?= 'Notify-osd'",
Added: "class_g = 'Firefox'",
Added: "class_g = 'Firefox-esr'",
Added: "class_g = 'Dmenu'",
Added: "name = 'Notification'",
Added: "_GTK_FRAME_EXTENTS@:c"
Added: ];
Added: 
Added: ## fading
Added: fading = true;
Added: fade-delta = 0.25;
Added: fade-in-step = 0.02;
Added: fade-out-step = 0.02;
Added: fade-exclude = [
Added: ];
Added: 
Added: ## other
Added: backend = "xrender";
Added: mark-wmwin-focused = true;
Added: mark-ovredir-focused = true;
Added: detect-rounded-corners = true;
Added: detect-client-opacity = true;
Added: refresh-rate = 0;
Added: vsync = "none";
Added: dbe = false;
Added: paint-on-overlay = true;
Added: focus-exclude = [ "class_g = 'Cairo-clock'" ,
Added: "class_g = 'CoverGloobus'",
Added: "class_g = 'Tilda'",
Added: "class_g = 'Firefox'",
Added: "class_g = 'Firefox-esr'"
Added: ];
Added: detect-transient = true;
Added: detect-client-leader = true;
Added: invert-color-include = [ ];
Added: glx-copy-from-front = false;
Added: glx-swap-method = "undefined";
Added: wintypes:
Added: {
Added: tooltip = { fade = true; shadow = true; opacity = 0.75; focus = true; };
Added: };
Removed: "/home/cerebnismus/.config/dunst/dunst",
Removed: "/home/cerebnismus/.config/htop/htop",
Added: "/home/cerebnismus/.config/dunst/",
Added: "/home/cerebnismus/.config/htop/",
Removed: "/home/cerebnismus/.LEAVEME.md"
Added: "/home/cerebnismus/README.md"
Added: [global]
Added: monitor = 0
Added: follow = mouse
Added: geometry = "250x50-24+24"
Added: indicate_hidden = yes
Added: shrink = no
Added: separator_height = 0
Added: padding = 16
Added: horizontal_padding = 24
Added: frame_width = 2
Added: sort = no
Added: idle_threshold = 120
Added: font = Noto Sans 8
Added: line_height = 4
Added: markup = full
Added: format = "<b>%s</b>\n%b"
Added: alignment = left
Added: show_age_threshold = 60
Added: word_wrap = yes
Added: ignore_newline = no
Added: stack_duplicates = false
Added: hide_duplicate_count = yes
Added: show_indicators = no
Added: icon_position = off
Added: sticky_history = yes
Added: history_length = 20
Added: browser = /usr/bin/firefox -new-tab
Added: always_run_script = true
Added: title = Dunst
Added: class = Dunst
Added: 
Added: [shortcuts]
Added: close = ctrl+space
Added: close_all = ctrl+shift+space
Added: history = ctrl+grave
Added: context = ctrl+shift+period
Added: 
Added: [urgency_low]
Added: background = "#2f343f"
Added: foreground = "#d8dee8"
Added: timeout = 2
Added: 
Added: [urgency_normal]
Added: background = "#2f343f"
Added: foreground = "#d8dee8"
Added: timeout = 4
Added: 
Added: [urgency_critical]
Added: background = "#2f343f"
Added: foreground = "#d8dee8"
Added: frame_color = "#bf616a"
Added: timeout = 0
Added: # Beware! This file is rewritten by htop when settings are changed in the interface.
Added: # The parser is also very primitive, and not human-friendly.
Added: fields=0 48 17 18 38 39 40 2 46 47 49 1
Added: sort_key=46
Added: sort_direction=1
Added: hide_threads=0
Added: hide_kernel_threads=1
Added: hide_userland_threads=0
Added: shadow_other_users=0
Added: show_thread_names=0
Added: show_program_path=1
Added: highlight_base_name=0
Added: highlight_megabytes=1
Added: highlight_threads=1
Added: tree_view=0
Added: header_margin=1
Added: detailed_cpu_time=0
Added: cpu_count_from_zero=0
Added: update_process_names=0
Added: account_guest_in_cpu_meter=0
Added: color_scheme=0
Added: delay=15
Added: left_meters=AllCPUs Memory Swap
Added: left_meter_modes=1 1 1
Added: right_meters=Tasks LoadAverage Uptime
Added: right_meter_modes=2 2 2
Added: # Beware! This file is rewritten by htop when settings are changed in the interface.
Added: # The parser is also very primitive, and not human-friendly.
Added: fields=0 48 17 18 38 39 40 2 46 47 49 1
Added: sort_key=46
Added: sort_direction=-1
Added: tree_sort_key=0
Added: tree_sort_direction=1
Added: hide_kernel_threads=1
Added: hide_userland_threads=0
Added: shadow_other_users=0
Added: show_thread_names=0
Added: show_program_path=1
Added: highlight_base_name=0
Added: highlight_megabytes=1
Added: highlight_threads=1
Added: highlight_changes=0
Added: highlight_changes_delay_secs=5
Added: find_comm_in_cmdline=1
Added: strip_exe_from_cmdline=1
Added: show_merged_command=0
Added: tree_view=0
Added: tree_view_always_by_pid=0
Added: header_margin=1
Added: detailed_cpu_time=0
Added: cpu_count_from_one=0
Added: show_cpu_usage=1
Added: show_cpu_frequency=0
Added: show_cpu_temperature=0
Added: degree_fahrenheit=0
Added: update_process_names=0
Added: account_guest_in_cpu_meter=0
Added: color_scheme=0
Added: enable_mouse=1
Added: delay=15
Added: left_meters=AllCPUs Memory Swap
Added: left_meter_modes=1 1 1
Added: right_meters=Tasks LoadAverage Uptime
Added: right_meter_modes=2 2 2
Added: hide_function_bar=0
Added: # set modifier
Added: set $super Mod4
Added: set $alt Mod1
Added: 
Added: # set font
Added: font pango: Noto Sans 8
Added: 
Added: # Use Mouse+$super to drag floating windows to their wanted position
Added: floating_modifier $super
Added: 
Added: #autostart
Added: exec --no-startup-id hsetroot -center ~/Downloads/wallpaper.png
Added: exec --no-startup-id xsettingsd &
Added: exec --no-startup-id compton -b
Added: 
Added: # start a terminal
Added: bindsym $super+Return exec i3-sensible-terminal
Added: 
Added: # start dmenu (a program launcher)
Added: bindsym $super+Shift+d exec i3-dmenu-desktop --dmenu="dmenu -i -fn 'Noto Sans:size=8'"
Added: bindsym $super+d exec rofi -lines 12 -padding 18 -width 60 -location 0 -show run -sidebar-mode -columns 3 -font 'Noto Sans 8'
Added: 
Added: # common apps keybinds
Added: bindsym Print exec scrot 'Cheese_%a-%d%b%y_%H.%M.png' -e 'viewnior ~/$f'
Added: bindsym $super+l exec i3lock -i ~/Downloads/wallpaper.png
Added: bindsym $super+Shift+w exec firefox
Added: bindsym $super+Shift+f exec code-insiders;workspace 3;floating enable
Added: bindsym $super+Shift+g exec geany
Added: 
Added: #change volume
Added: bindsym XF86AudioRaiseVolume exec amixer -q set Master 5%+
Added: bindsym XF86AudioLowerVolume exec amixer -q set Master 5%-
Added: bindsym XF86AudioMute exec amixer set Master toggle
Added: 
Added: # music control
Added: bindsym XF86AudioNext exec mpc next
Added: bindsym XF86AudioPrev exec mpc prev
Added: bindsym XF86AudioPlay exec mpc toggle
Added: bindsym XF86AudioStop exec mpc stop
Added: 
Added: # kill focused window
Added: bindsym $super+c kill
Added: bindsym $alt+F4 kill
Added: 
Added: # change focus
Added: bindsym $super+Left focus left
Added: bindsym $super+Down focus down
Added: bindsym $super+Up focus up
Added: bindsym $super+Right focus right
Added: 
Added: # move focused window
Added: bindsym $super+Shift+Left move left
Added: bindsym $super+Shift+Down move down
Added: bindsym $super+Shift+Up move up
Added: bindsym $super+Shift+Right move right
Added: 
Added: # split in horizontal orientation
Added: bindsym $super+h split h
Added: 
Added: # split in vertical orientation
Added: bindsym $super+v split v
Added: 
Added: # enter fullscreen mode for the focused container
Added: bindsym $super+f fullscreen toggle
Added: 
Added: # change container layout split
Added: bindsym $super+s layout toggle split
Added: 
Added: # toggle tiling / floating
Added: bindsym $super+space floating toggle
Added: 
Added: # change focus between tiling / floating windows
Added: bindsym $super+Shift+space focus mode_toggle
Added: 
Added: # switch to workspace
Added: bindsym $alt+Control+Right workspace next
Added: bindsym $alt+Control+Left workspace prev
Added: bindsym $super+1 workspace 1
Added: bindsym $super+2 workspace 2
Added: bindsym $super+3 workspace 3
Added: bindsym $super+4 workspace 4
Added: bindsym $super+5 workspace 5
Added: bindsym $super+6 workspace 6
Added: 
Added: # move focused container to workspace
Added: bindsym $super+Shift+1 move container to workspace 1
Added: bindsym $super+Shift+2 move container to workspace 2
Added: bindsym $super+Shift+3 move container to workspace 3
Added: bindsym $super+Shift+4 move container to workspace 4
Added: bindsym $super+Shift+5 move container to workspace 5
Added: bindsym $super+Shift+6 move container to workspace 6
Added: 
Added: # restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
Added: bindsym $super+Shift+r restart
Added: 
Added: # exit i3
Added: bindsym $super+q exec "i3-nagbar -t warning -m 'Really, exit?' -b 'Yes' 'i3-msg exit'"
Added: 
Added: # resize window (you can also use the mouse for that)
Added: mode "resize" {
Added: bindsym Left resize shrink width 5 px or 5 ppt
Added: bindsym Down resize grow height 5 px or 5 ppt
Added: bindsym Up resize shrink height 5 px or 5 ppt
Added: bindsym Right resize grow width 5 px or 5 ppt
Added: bindsym Return mode "default"
Added: }
Added: bindsym $super+r mode "resize"
Added: 
Added: # panel
Added: bar {
Added: colors {
Added: background #2f343f
Added: statusline #2f343f
Added: separator #4b5262
Added: 
Added: # colour of border, background, and text
Added: focused_workspace       #2f343f #bf616a #d8dee8
Added: active_workspace        #2f343f #2f343f #d8dee8
Added: inactive_workspace      #2f343f #2f343f #d8dee8
Added: urgent_workspacei       #2f343f #ebcb8b #2f343f
Added: }
Added: status_command i3status
Added: }
Added: 
Added: # window rules, you can find the window class using xprop
Added: for_window [class=".*"] border pixel 4
Added: assign [class=URxvt] 1
Added: assign [class=Firefox|Transmission-gtk] 2
Added: for_window [class=Gnome-terminal|Viewnior|feh|Audacious|File-roller|Lxappearance|Lxtask|Pavucontrol] floating enable
Added: for_window [class=URxvt|Firefox|firefox|Geany|Evince|Soffice|libreoffice*|mpv|Ghb|Xfburn|Gimp*|Inkscape|Vlc|Lxappearance|Audacity] floating enable
Added: for_window [class=Xfburn|GParted|System-config-printer.py|Lxtask|Pavucontrol|Exo-helper*|Lxrandr|Arandr] focus
Added: 
Added: # colour of border, background, text, indicator, and child_border
Added: client.focused              #bf616a #2f343f #d8dee8 #bf616a #d8dee8
Added: client.focused_inactive     #2f343f #2f343f #d8dee8 #2f343f #2f343f
Added: client.unfocused            #2f343f #2f343f #d8dee8 #2f343f #2f343f
Added: client.urgent               #2f343f #2f343f #d8dee8 #2f343f #2f343f
Added: client.placeholder          #2f343f #2f343f #d8dee8 #2f343f #2f343f
Added: client.background           #2f343f
Added: # This file has been auto-generated by i3-config-wizard(1).
Added: # It will not be overwritten, so edit it as you like.
Added: #
Added: # Should you change your keyboard layout some time, delete
Added: # this file and re-run i3-config-wizard(1).
Added: #
Added: 
Added: # i3 config file (v4)
Added: #
Added: # Please see https://i3wm.org/docs/userguide.html for a complete reference!
Added: 
Added: set $mod Mod4
Added: 
Added: # Font for window titles. Will also be used by the bar unless a different font
Added: # is used in the bar {} block below.
Added: font pango:monospace 8
Added: 
Added: # This font is widely installed, provides lots of unicode glyphs, right-to-left
Added: # text rendering and scalability on retina/hidpi displays (thanks to pango).
Added: #font pango:DejaVu Sans Mono 8
Added: 
Added: # Start XDG autostart .desktop files using dex. See also
Added: # https://wiki.archlinux.org/index.php/XDG_Autostart
Added: exec --no-startup-id dex --autostart --environment i3
Added: 
Added: # The combination of xss-lock, nm-applet and pactl is a popular choice, so
Added: # they are included here as an example. Modify as you see fit.
Added: 
Added: # xss-lock grabs a logind suspend inhibit lock and will use i3lock to lock the
Added: # screen before suspend. Use loginctl lock-session to lock your screen.
Added: exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork
Added: 
Added: # NetworkManager is the most popular way to manage wireless networks on Linux,
Added: # and nm-applet is a desktop environment-independent system tray GUI for it.
Added: exec --no-startup-id nm-applet
Added: 
Added: # Use pactl to adjust volume in PulseAudio.
Added: set $refresh_i3status killall -SIGUSR1 i3status
Added: bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status
Added: bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status
Added: bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
Added: bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status
Added: 
Added: # Use Mouse+$mod to drag floating windows to their wanted position
Added: floating_modifier $mod
Added: 
Added: # start a terminal
Added: bindsym $mod+Return exec i3-sensible-terminal
Added: 
Added: # kill focused window
Added: bindsym $mod+Shift+q kill
Added: 
Added: # start dmenu (a program launcher)
Added: bindsym $mod+d exec --no-startup-id dmenu_run
Added: # A more modern dmenu replacement is rofi:
Added: # bindcode $mod+40 exec "rofi -modi drun,run -show drun"
Added: # There also is i3-dmenu-desktop which only displays applications shipping a
Added: # .desktop file. It is a wrapper around dmenu, so you need that installed.
Added: # bindcode $mod+40 exec --no-startup-id i3-dmenu-desktop
Added: 
Added: # change focus
Added: bindsym $mod+j focus left
Added: bindsym $mod+k focus down
Added: bindsym $mod+l focus up
Added: bindsym $mod+semicolon focus right
Added: 
Added: # alternatively, you can use the cursor keys:
Added: bindsym $mod+Left focus left
Added: bindsym $mod+Down focus down
Added: bindsym $mod+Up focus up
Added: bindsym $mod+Right focus right
Added: 
Added: # move focused window
Added: bindsym $mod+Shift+j move left
Added: bindsym $mod+Shift+k move down
Added: bindsym $mod+Shift+l move up
Added: bindsym $mod+Shift+semicolon move right
Added: 
Added: # alternatively, you can use the cursor keys:
Added: bindsym $mod+Shift+Left move left
Added: bindsym $mod+Shift+Down move down
Added: bindsym $mod+Shift+Up move up
Added: bindsym $mod+Shift+Right move right
Added: 
Added: # split in horizontal orientation
Added: bindsym $mod+h split h
Added: 
Added: # split in vertical orientation
Added: bindsym $mod+v split v
Added: 
Added: # enter fullscreen mode for the focused container
Added: bindsym $mod+f fullscreen toggle
Added: 
Added: # change container layout (stacked, tabbed, toggle split)
Added: bindsym $mod+s layout stacking
Added: bindsym $mod+w layout tabbed
Added: bindsym $mod+e layout toggle split
Added: 
Added: # toggle tiling / floating
Added: bindsym $mod+Shift+space floating toggle
Added: 
Added: # change focus between tiling / floating windows
Added: bindsym $mod+space focus mode_toggle
Added: 
Added: # focus the parent container
Added: bindsym $mod+a focus parent
Added: 
Added: # focus the child container
Added: #bindsym $mod+d focus child
Added: 
Added: # Define names for default workspaces for which we configure key bindings later on.
Added: # We use variables to avoid repeating the names in multiple places.
Added: set $ws1 "1"
Added: set $ws2 "2"
Added: set $ws3 "3"
Added: set $ws4 "4"
Added: set $ws5 "5"
Added: set $ws6 "6"
Added: set $ws7 "7"
Added: set $ws8 "8"
Added: set $ws9 "9"
Added: set $ws10 "10"
Added: 
Added: # switch to workspace
Added: bindsym $mod+1 workspace number $ws1
Added: bindsym $mod+2 workspace number $ws2
Added: bindsym $mod+3 workspace number $ws3
Added: bindsym $mod+4 workspace number $ws4
Added: bindsym $mod+5 workspace number $ws5
Added: bindsym $mod+6 workspace number $ws6
Added: bindsym $mod+7 workspace number $ws7
Added: bindsym $mod+8 workspace number $ws8
Added: bindsym $mod+9 workspace number $ws9
Added: bindsym $mod+0 workspace number $ws10
Added: 
Added: # move focused container to workspace
Added: bindsym $mod+Shift+1 move container to workspace number $ws1
Added: bindsym $mod+Shift+2 move container to workspace number $ws2
Added: bindsym $mod+Shift+3 move container to workspace number $ws3
Added: bindsym $mod+Shift+4 move container to workspace number $ws4
Added: bindsym $mod+Shift+5 move container to workspace number $ws5
Added: bindsym $mod+Shift+6 move container to workspace number $ws6
Added: bindsym $mod+Shift+7 move container to workspace number $ws7
Added: bindsym $mod+Shift+8 move container to workspace number $ws8
Added: bindsym $mod+Shift+9 move container to workspace number $ws9
Added: bindsym $mod+Shift+0 move container to workspace number $ws10
Added: 
Added: # reload the configuration file
Added: bindsym $mod+Shift+c reload
Added: # restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
Added: bindsym $mod+Shift+r restart
Added: # exit i3 (logs you out of your X session)
Added: bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"
Added: 
Added: # resize window (you can also use the mouse for that)
Added: mode "resize" {
Added: # These bindings trigger as soon as you enter the resize mode
Added: 
Added: # Pressing left will shrink the window’s width.
Added: # Pressing right will grow the window’s width.
Added: # Pressing up will shrink the window’s height.
Added: # Pressing down will grow the window’s height.
Added: bindsym j resize shrink width 10 px or 10 ppt
Added: bindsym k resize grow height 10 px or 10 ppt
Added: bindsym l resize shrink height 10 px or 10 ppt
Added: bindsym semicolon resize grow width 10 px or 10 ppt
Added: 
Added: # same bindings, but for the arrow keys
Added: bindsym Left resize shrink width 10 px or 10 ppt
Added: bindsym Down resize grow height 10 px or 10 ppt
Added: bindsym Up resize shrink height 10 px or 10 ppt
Added: bindsym Right resize grow width 10 px or 10 ppt
Added: 
Added: # back to normal: Enter or Escape or $mod+r
Added: bindsym Return mode "default"
Added: bindsym Escape mode "default"
Added: bindsym $mod+r mode "default"
Added: }
Added: 
Added: bindsym $mod+r mode "resize"
Added: 
Added: # Start i3bar to display a workspace bar (plus the system information i3status
Added: # finds out, if available)
Added: bar {
Added: status_command i3status
Added: }
Added: general {
Added: output_format = "i3bar"
Added: colors = false
Added: markup = pango
Added: interval = 5
Added: color_good = '#2f343f'
Added: color_degraded = '#ebcb8b'
Added: color_bad = '#ba5e57'
Added: }
Added: 
Added: order += "load"
Added: order += "cpu_temperature 0"
Added: order += "disk /"
Added: order += "disk /home"
Added: order += "ethernet enp2s0"
Added: order += "wireless wlp3s0"
Added: order += "volume master"
Added: order += "battery 1"
Added: order += "tztime local"
Added: 
Added: load {
Added: format = "<span background='#f59335'>  %5min Load </span>"
Added: }
Added: 
Added: cpu_temperature 0 {
Added: format = "<span background='#bf616a'>  %degrees °C </span>"
Added: path = "/sys/class/thermal/thermal_zone0/temp"
Added: }
Added: 
Added: disk "/" {
Added: format = "<span background='#fec7cd'>  %free Free </span>"
Added: }
Added: 
Added: disk "/home" {
Added: format = "<span background='#a1d569'>  %free Free </span>"
Added: }
Added: 
Added: ethernet enp2s0 {
Added: format_up = "<span background='#88c0d0'>  %ip </span>"
Added: format_down = "<span background='#88c0d0'>  Disconnected </span>"
Added: }
Added: 
Added: wireless wlp3s0 {
Added: format_up = "<span background='#b48ead'>  %essid </span>"
Added: format_down = "<span background='#b48ead'>  Disconnected </span>"
Added: }
Added: 
Added: volume master {
Added: format = "<span background='#ebcb8b'>  %volume </span>"
Added: format_muted = "<span background='#ebcb8b'>  Muted </span>"
Added: device = "default"
Added: mixer = "Master"
Added: mixer_idx = 0
Added: }
Added: 
Added: battery 1 {
Added: last_full_capacity = true
Added: format = "<span background='#a3be8c'>  %status %percentage </span>"
Added: format_down = "No Battery"
Added: status_chr = "Charging"
Added: status_bat = "Battery"
Added: status_unk = "Unknown"
Added: status_full = "Charged"
Added: path = "/sys/class/power_supply/BAT0/uevent"
Added: low_threshold = 10
Added: }
Added: 
Added: tztime local {
Added: format = "<span background='#81a1c1'> %time </span>"
Added: format_time = " %a %-d %b %H:%M"
Added: }
Added: 
Added: print_info() {
Added: info title
Added: info underline
Added: 
Added: info "Local IP" local_ip
Added: info "RemoteIP" public_ip
Added: info "OS" distro
Added: info "Host" model
Added: info "Kernel" kernel
Added: info "Uptime" uptime
Added: info "Packax" packages
Added: info "Shell" shell
Added: info "Resxx" resolution
Added: # info "DE" de
Added: info "WM" wm
Added: info "WM Theme" wm_theme
Added: info "Theme" theme
Added: info "Icons" icons
Added: info "Terminal" term
Added: info "Terminal Font" term_font
Added: info "CPU" cpu
Added: info "GPU" gpu
Added: info "MEM" memory
Added: info "GPU Driver" gpu_driver  # Linux/macOS only
Added: info "CPU Usage " cpu_usage
Added: # info "Disk      " disk
Added: info "Battery" battery
Added: # info "Font " font
Added: # info "Song" song
Added: # info "Users" users
Added: # info "Install Date" install_date
Added: info "Locale" locale  # This only works on glibc systems.
Added: 
Added: info line_break
Added: info cols
Added: info line_break
Added: }
Added: 
Added: 
Added: # Kernel
Added: 
Added: 
Added: # Shorten the output of the kernel function.
Added: #
Added: # Default:  'on'
Added: # Values:   'on', 'off'
Added: # Flag:     --kernel_shorthand
Added: # Supports: Everything except *BSDs (except PacBSD and PC-BSD)
Added: #
Added: # Example:
Added: # on:  '4.8.9-1-ARCH'
Added: # off: 'Linux 4.8.9-1-ARCH'
Added: kernel_shorthand="on"
Added: 
Added: 
Added: # Distro
Added: 
Added: 
Added: # Shorten the output of the distro function
Added: #
Added: # Default:  'off'
Added: # Values:   'on', 'off', 'tiny'
Added: # Flag:     --distro_shorthand
Added: # Supports: Everything except Windows and Haiku
Added: distro_shorthand="off"
Added: 
Added: # Show/Hide OS Architecture.
Added: # Show 'x86_64', 'x86' and etc in 'Distro:' output.
Added: #
Added: # Default: 'on'
Added: # Values:  'on', 'off'
Added: # Flag:    --os_arch
Added: #
Added: # Example:
Added: # on:  'Arch Linux x86_64'
Added: # off: 'Arch Linux'
Added: os_arch="on"
Added: 
Added: 
Added: # Uptime
Added: 
Added: 
Added: # Shorten the output of the uptime function
Added: #
Added: # Default: 'on'
Added: # Values:  'on', 'off', 'tiny'
Added: # Flag:    --uptime_shorthand
Added: #
Added: # Example:
Added: # on:   '2 days, 10 hours, 3 mins'
Added: # off:  '2 days, 10 hours, 3 minutes'
Added: # tiny: '2d 10h 3m'
Added: uptime_shorthand="on"
Added: 
Added: 
Added: # Shell
Added: 
Added: 
Added: # Show the path to $SHELL
Added: #
Added: # Default: 'off'
Added: # Values:  'on', 'off'
Added: # Flag:    --shell_path
Added: #
Added: # Example:
Added: # on:  '/bin/bash'
Added: # off: 'bash'
Added: shell_path="off"
Added: 
Added: # Show $SHELL version
Added: #
Added: # Default: 'on'
Added: # Values:  'on', 'off'
Added: # Flag:    --shell_version
Added: #
Added: # Example:
Added: # on:  'bash 4.4.5'
Added: # off: 'bash'
Added: shell_version="on"
Added: 
Added: 
Added: # CPU
Added: 
Added: 
Added: # CPU speed type
Added: #
Added: # Default: 'bios_limit'
Added: # Values: 'scaling_cur_freq', 'scaling_min_freq', 'scaling_max_freq', 'bios_limit'.
Added: # Flag:    --speed_type
Added: # Supports: Linux with 'cpufreq'
Added: # NOTE: Any file in '/sys/devices/system/cpu/cpu0/cpufreq' can be used as a value.
Added: speed_type="bios_limit"
Added: 
Added: # CPU speed shorthand
Added: #
Added: # Default: 'off'
Added: # Values: 'on', 'off'.
Added: # Flag:    --speed_shorthand.
Added: # NOTE: This flag is not supported in systems with CPU speed less than 1 GHz
Added: #
Added: # Example:
Added: # on:    'i7-6500U (4) @ 3.1GHz'
Added: # off:   'i7-6500U (4) @ 3.100GHz'
Added: speed_shorthand="off"
Added: 
Added: # Enable/Disable CPU brand in output.
Added: #
Added: # Default: 'on'
Added: # Values:  'on', 'off'
Added: # Flag:    --cpu_brand
Added: #
Added: # Example:
Added: # on:   'Intel i7-6500U'
Added: # off:  'i7-6500U (4)'
Added: cpu_brand="on"
Added: 
Added: # CPU Speed
Added: # Hide/Show CPU speed.
Added: #
Added: # Default: 'on'
Added: # Values:  'on', 'off'
Added: # Flag:    --cpu_speed
Added: #
Added: # Example:
Added: # on:  'Intel i7-6500U (4) @ 3.1GHz'
Added: # off: 'Intel i7-6500U (4)'
Added: cpu_speed="on"
Added: 
Added: # CPU Cores
Added: # Display CPU cores in output
Added: #
Added: # Default: 'logical'
Added: # Values:  'logical', 'physical', 'off'
Added: # Flag:    --cpu_cores
Added: # Support: 'physical' doesn't work on BSD.
Added: #
Added: # Example:
Added: # logical:  'Intel i7-6500U (4) @ 3.1GHz' (All virtual cores)
Added: # physical: 'Intel i7-6500U (2) @ 3.1GHz' (All physical cores)
Added: # off:      'Intel i7-6500U @ 3.1GHz'
Added: cpu_cores="logical"
Added: 
Added: # CPU Temperature
Added: # Hide/Show CPU temperature.
Added: # Note the temperature is added to the regular CPU function.
Added: #
Added: # Default: 'off'
Added: # Values:  'C', 'F', 'off'
Added: # Flag:    --cpu_temp
Added: # Supports: Linux, BSD
Added: # NOTE: For FreeBSD and NetBSD-based systems, you'll need to enable
Added: #       coretemp kernel module. This only supports newer Intel processors.
Added: #
Added: # Example:
Added: # C:   'Intel i7-6500U (4) @ 3.1GHz [27.2°C]'
Added: # F:   'Intel i7-6500U (4) @ 3.1GHz [82.0°F]'
Added: # off: 'Intel i7-6500U (4) @ 3.1GHz'
Added: cpu_temp="off"
Added: 
Added: 
Added: # GPU
Added: 
Added: 
Added: # Enable/Disable GPU Brand
Added: #
Added: # Default: 'on'
Added: # Values:  'on', 'off'
Added: # Flag:    --gpu_brand
Added: #
Added: # Example:
Added: # on:  'AMD HD 7950'
Added: # off: 'HD 7950'
Added: gpu_brand="on"
Added: 
Added: # Which GPU to display
Added: #
Added: # Default: 'all'
Added: # Values:  'all', 'dedicated', 'integrated'
Added: # Flag:    --gpu_type
Added: # Supports: Linux
Added: #
Added: # Example:
Added: # all:
Added: #   GPU1: AMD HD 7950
Added: #   GPU2: Intel Integrated Graphics
Added: #
Added: # dedicated:
Added: #   GPU1: AMD HD 7950
Added: #
Added: # integrated:
Added: #   GPU1: Intel Integrated Graphics
Added: gpu_type="all"
Added: 
Added: 
Added: # Resolution
Added: 
Added: 
Added: # Display refresh rate next to each monitor
Added: # Default: 'off'
Added: # Values:  'on', 'off'
Added: # Flag:    --refresh_rate
Added: # Supports: Doesn't work on Windows.
Added: #
Added: # Example:
Added: # on:  '1920x1080 @ 60Hz'
Added: # off: '1920x1080'
Added: refresh_rate="off"
Added: 
Added: 
Added: # Gtk Theme / Icons / Font
Added: 
Added: 
Added: # Shorten output of GTK Theme / Icons / Font
Added: #
Added: # Default: 'off'
Added: # Values:  'on', 'off'
Added: # Flag:    --gtk_shorthand
Added: #
Added: # Example:
Added: # on:  'Numix, Adwaita'
Added: # off: 'Numix [GTK2], Adwaita [GTK3]'
Added: gtk_shorthand="off"
Added: 
Added: 
Added: # Enable/Disable gtk2 Theme / Icons / Font
Added: #
Added: # Default: 'on'
Added: # Values:  'on', 'off'
Added: # Flag:    --gtk2
Added: #
Added: # Example:
Added: # on:  'Numix [GTK2], Adwaita [GTK3]'
Added: # off: 'Adwaita [GTK3]'
Added: gtk2="on"
Added: 
Added: # Enable/Disable gtk3 Theme / Icons / Font
Added: #
Added: # Default: 'on'
Added: # Values:  'on', 'off'
Added: # Flag:    --gtk3
Added: #
Added: # Example:
Added: # on:  'Numix [GTK2], Adwaita [GTK3]'
Added: # off: 'Numix [GTK2]'
Added: gtk3="on"
Added: 
Added: 
Added: # IP Address
Added: 
Added: 
Added: # Website to ping for the public IP
Added: #
Added: # Default: 'http://ident.me'
Added: # Values:  'url'
Added: # Flag:    --ip_host
Added: public_ip_host="http://ident.me"
Added: 
Added: 
Added: # Disk
Added: 
Added: 
Added: # Which disks to display.
Added: # The values can be any /dev/sdXX, mount point or directory.
Added: # NOTE: By default we only show the disk info for '/'.
Added: #
Added: # Default: '/'
Added: # Values:  '/', '/dev/sdXX', '/path/to/drive'.
Added: # Flag:    --disk_show
Added: #
Added: # Example:
Added: # disk_show=('/' '/dev/sdb1'):
Added: #      'Disk (/): 74G / 118G (66%)'
Added: #      'Disk (/mnt/Videos): 823G / 893G (93%)'
Added: #
Added: # disk_show=('/'):
Added: #      'Disk (/): 74G / 118G (66%)'
Added: #
Added: disk_show=('/')
Added: 
Added: # Disk subtitle.
Added: # What to append to the Disk subtitle.
Added: #
Added: # Default: 'mount'
Added: # Values:  'mount', 'name', 'dir'
Added: # Flag:    --disk_subtitle
Added: #
Added: # Example:
Added: # name:   'Disk (/dev/sda1): 74G / 118G (66%)'
Added: #         'Disk (/dev/sdb2): 74G / 118G (66%)'
Added: #
Added: # mount:  'Disk (/): 74G / 118G (66%)'
Added: #         'Disk (/mnt/Local Disk): 74G / 118G (66%)'
Added: #         'Disk (/mnt/Videos): 74G / 118G (66%)'
Added: #
Added: # dir:    'Disk (/): 74G / 118G (66%)'
Added: #         'Disk (Local Disk): 74G / 118G (66%)'
Added: #         'Disk (Videos): 74G / 118G (66%)'
Added: disk_subtitle="mount"
Added: 
Added: 
Added: # Song
Added: 
Added: 
Added: # Manually specify a music player.
Added: #
Added: # Default: 'auto'
Added: # Values:  'auto', 'player-name'
Added: # Flag:    --music_player
Added: #
Added: # Available values for 'player-name':
Added: #
Added: # Google Play
Added: # Spotify
Added: # amarok
Added: # audacious
Added: # banshee
Added: # bluemindo
Added: # clementine
Added: # cmus
Added: # deadbeef
Added: # deepin-music
Added: # elisa
Added: # exaile
Added: # gnome-music
Added: # guayadeque
Added: # iTunes$
Added: # juk
Added: # lollypop
Added: # mocp
Added: # mopidy
Added: # mpd
Added: # pogo
Added: # pragha
Added: # qmmp
Added: # quodlibet
Added: # rhythmbox
Added: # spotify
Added: # tomahawk
Added: # xmms2d
Added: # yarock
Added: music_player="auto"
Added: 
Added: # Print the Artist and Title on separate lines
Added: #
Added: # Default: 'off'
Added: # Values:  'on', 'off'
Added: # Flag:    --song_shorthand
Added: #
Added: # Example:
Added: # on:  'Artist: The Fratellis'
Added: #      'Song: Chelsea Dagger'
Added: #
Added: # off: 'Song: The Fratellis - Chelsea Dagger'
Added: song_shorthand="off"
Added: 
Added: 
Added: # Install Date
Added: 
Added: 
Added: # Whether to show the time in the output
Added: #
Added: # Default:  'on'
Added: # Values:   'on', 'off'
Added: # Flag:     --install_time
Added: #
Added: # Example:
Added: # on:  'Thu 14 Apr 2016 11:50 PM'
Added: # off: 'Thu 14 Apr 2016'
Added: install_time="on"
Added: 
Added: # Set time format in the output
Added: #
Added: # Default: '24h'
Added: # Values:  '12h', '24h'
Added: # Flag:    --install_time_format
Added: #
Added: # Example:
Added: # 12h: 'Thu 14 Apr 2016 11:50 PM'
Added: # 24h: 'Thu 14 Apr 2016 23:50'
Added: install_time_format="12h"
Added: 
Added: 
Added: # Text Colors
Added: 
Added: 
Added: # Text Colors
Added: #
Added: # Default:  'distro'
Added: # Values:   'distro', 'num' 'num' 'num' 'num' 'num' 'num'
Added: # Flag:     --colors
Added: #
Added: # Each number represents a different part of the text in
Added: # this order: 'title', '@', 'underline', 'subtitle', 'colon', 'info'
Added: #
Added: # Example:
Added: # colors=(distro)      - Text is colored based on Distro colors.
Added: # colors=(4 6 1 8 8 6) - Text is colored in the order above.
Added: colors=(distro)
Added: 
Added: 
Added: # Text Options
Added: 
Added: 
Added: # Toggle bold text
Added: #
Added: # Default:  'on'
Added: # Values:   'on', 'off'
Added: # Flag:     --bold
Added: bold="on"
Added: 
Added: # Enable/Disable Underline
Added: #
Added: # Default:  'on'
Added: # Values:   'on', 'off'
Added: # Flag:     --underline
Added: underline_enabled="on"
Added: 
Added: # Underline character
Added: #
Added: # Default:  '-'
Added: # Values:   'string'
Added: # Flag:     --underline_char
Added: underline_char="-"
Added: 
Added: 
Added: # Color Blocks
Added: 
Added: 
Added: # Color block range
Added: # The range of colors to print.
Added: #
Added: # Default:  '0', '7'
Added: # Values:   'num'
Added: # Flag:     --block_range
Added: #
Added: # Example:
Added: #
Added: # Display colors 0-7 in the blocks.  (8 colors)
Added: # neofetch --block_range 0 7
Added: #
Added: # Display colors 0-15 in the blocks. (16 colors)
Added: # neofetch --block_range 0 15
Added: block_range=(0 7)
Added: 
Added: # Toggle color blocks
Added: #
Added: # Default:  'on'
Added: # Values:   'on', 'off'
Added: # Flag:     --color_blocks
Added: color_blocks="on"
Added: 
Added: # Color block width in spaces
Added: #
Added: # Default:  '3'
Added: # Values:   'num'
Added: # Flag:     --block_width
Added: block_width=3
Added: 
Added: # Color block height in lines
Added: #
Added: # Default:  '1'
Added: # Values:   'num'
Added: # Flag:     --block_height
Added: block_height=1
Added: 
Added: 
Added: # Progress Bars
Added: 
Added: 
Added: # Bar characters
Added: #
Added: # Default:  '-', '='
Added: # Values:   'string', 'string'
Added: # Flag:     --bar_char
Added: #
Added: # Example:
Added: # neofetch --bar_char 'elapsed' 'total'
Added: # neofetch --bar_char '-' '='
Added: bar_char_elapsed="-"
Added: bar_char_total="="
Added: 
Added: # Toggle Bar border
Added: #
Added: # Default:  'on'
Added: # Values:   'on', 'off'
Added: # Flag:     --bar_border
Added: bar_border="on"
Added: 
Added: # Progress bar length in spaces
Added: # Number of chars long to make the progress bars.
Added: #
Added: # Default:  '15'
Added: # Values:   'num'
Added: # Flag:     --bar_length
Added: bar_length=15
Added: 
Added: # Progress bar colors
Added: # When set to distro, uses your distro's logo colors.
Added: #
Added: # Default:  'distro', 'distro'
Added: # Values:   'distro', 'num'
Added: # Flag:     --bar_colors
Added: #
Added: # Example:
Added: # neofetch --bar_colors 3 4
Added: # neofetch --bar_colors distro 5
Added: bar_color_elapsed="distro"
Added: bar_color_total="distro"
Added: 
Added: 
Added: # Info display
Added: # Display a bar with the info.
Added: #
Added: # Default: 'off'
Added: # Values:  'bar', 'infobar', 'barinfo', 'off'
Added: # Flags:   --cpu_display
Added: #          --memory_display
Added: #          --battery_display
Added: #          --disk_display
Added: #
Added: # Example:
Added: # bar:     '[---=======]'
Added: # infobar: 'info [---=======]'
Added: # barinfo: '[---=======] info'
Added: # off:     'info'
Added: cpu_display="off"
Added: memory_display="off"
Added: battery_display="off"
Added: disk_display="off"
Added: 
Added: 
Added: # Backend Settings
Added: 
Added: 
Added: # Image backend.
Added: #
Added: # Default:  'ascii'
Added: # Values:   'ascii', 'caca', 'catimg', 'jp2a', 'iterm2', 'off', 'termpix', 'pixterm', 'tycat', 'w3m'
Added: # Flag:     --backend
Added: # image_backend="ascii"
Added: image_backend="off"
Added: 
Added: # Image Source
Added: #
Added: # Which image or ascii file to display.
Added: #
Added: # Default:  'auto'
Added: # Values:   'auto', 'ascii', 'wallpaper', '/path/to/img', '/path/to/ascii', '/path/to/dir/'
Added: # Flag:     --source
Added: #
Added: # NOTE: 'auto' will pick the best image source for whatever image backend is used.
Added: #       In ascii mode, distro ascii art will be used and in an image mode, your
Added: #       wallpaper will be used.
Added: image_source="auto"
Added: 
Added: 
Added: # Ascii Options
Added: 
Added: 
Added: # Ascii distro
Added: # Which distro's ascii art to display.
Added: #
Added: # Default: 'auto'
Added: # Values:  'auto', 'distro_name'
Added: # Flag:    --ascii_distro
Added: #
Added: # NOTE: Arch and Ubuntu have 'old' logo variants.
Added: #       Change this to 'arch_old' or 'ubuntu_old' to use the old logos.
Added: # NOTE: Ubuntu has flavor variants.
Added: #       Change this to 'Lubuntu', 'Xubuntu', 'Ubuntu-GNOME' or 'Ubuntu-Budgie' to use the flavors.
Added: # NOTE: Arch, Crux and Gentoo have a smaller logo variant.
Added: #       Change this to 'arch_small', 'crux_small' or 'gentoo_small' to use the small logos.
Added: ascii_distro="auto"
Added: 
Added: # Ascii Colors
Added: #
Added: # Default:  'distro'
Added: # Values:   'distro', 'num' 'num' 'num' 'num' 'num' 'num'
Added: # Flag:     --ascii_colors
Added: #
Added: # Example:
Added: # ascii_colors=(distro)      - Ascii is colored based on Distro colors.
Added: # ascii_colors=(4 6 1 8 8 6) - Ascii is colored using these colors.
Added: ascii_colors=(distro)
Added: 
Added: # Bold ascii logo
Added: # Whether or not to bold the ascii logo.
Added: #
Added: # Default: 'on'
Added: # Values:  'on', 'off'
Added: # Flag:    --ascii_bold
Added: ascii_bold="on"
Added: 
Added: 
Added: # Image Options
Added: 
Added: 
Added: # Image loop
Added: # Setting this to on will make neofetch redraw the image constantly until
Added: # Ctrl+C is pressed. This fixes display issues in some terminal emulators.
Added: #
Added: # Default:  'off'
Added: # Values:   'on', 'off'
Added: # Flag:     --loop
Added: image_loop="off"
Added: 
Added: # Thumbnail directory
Added: #
Added: # Default: '~/.cache/thumbnails/neofetch'
Added: # Values:  'dir'
Added: thumbnail_dir="${XDG_CACHE_HOME:-${HOME}/.cache}/thumbnails/neofetch"
Added: 
Added: # Crop mode
Added: #
Added: # Default:  'normal'
Added: # Values:   'normal', 'fit', 'fill'
Added: # Flag:     --crop_mode
Added: #
Added: # See this wiki page to learn about the fit and fill options.
Added: # https://github.com/dylanaraps/neofetch/wiki/What-is-Waifu-Crop%3F
Added: crop_mode="normal"
Added: 
Added: # Crop offset
Added: # Note: Only affects 'normal' crop mode.
Added: #
Added: # Default:  'center'
Added: # Values:   'northwest', 'north', 'northeast', 'west', 'center'
Added: #           'east', 'southwest', 'south', 'southeast'
Added: # Flag:     --crop_offset
Added: crop_offset="center"
Added: 
Added: # Image size
Added: # The image is half the terminal width by default.
Added: #
Added: # Default: 'auto'
Added: # Values:  'auto', '00px', '00%', 'none'
Added: # Flags:   --image_size
Added: #          --size
Added: image_size="auto"
Added: 
Added: # Gap between image and text
Added: #
Added: # Default: '3'
Added: # Values:  'num', '-num'
Added: # Flag:    --gap
Added: gap=3
Added: 
Added: # Image offsets
Added: # Only works with the w3m backend.
Added: #
Added: # Default: '0'
Added: # Values:  'px'
Added: # Flags:   --xoffset
Added: #          --yoffset
Added: yoffset=0
Added: xoffset=0
Added: 
Added: # Image background color
Added: # Only works with the w3m backend.
Added: #
Added: # Default: ''
Added: # Values:  'color', 'blue'
Added: # Flag:    --bg_color
Added: background_color=
Added: 
Added: 
Added: # Scrot Options
Added: 
Added: 
Added: # Whether or not to always take a screenshot
Added: # You can manually take a screenshot with "--scrot" or "-s"
Added: #
Added: # Default: 'off'
Added: # Values:  'on', 'off'
Added: # Flags:   --scrot
Added: #          -s
Added: scrot="off"
Added: 
Added: # Screenshot Program
Added: # Neofetch will automatically use whatever screenshot tool
Added: # is installed on your system.
Added: #
Added: # If 'neofetch -v' says that it couldn't find a screenshot
Added: # tool or you're using a custom tool then you can change
Added: # the option below to a custom command.
Added: #
Added: # Default: 'auto'
Added: # Values:  'auto' 'cmd -flags'
Added: # Flag:    --scrot_cmd
Added: scrot_cmd="auto"
Added: 
Added: # Screenshot Filename
Added: # What to name the screenshots
Added: #
Added: # Default: 'neofetch-$(date +%F-%I-%M-%S-${RANDOM}).png'
Added: # Values:  'string'
Added: # Flag:    --scrot_name
Added: scrot_name="neofetch-$(date +%F-%I-%M-%S-${RANDOM}).png"
Added: 
Added: # Image upload host
Added: # Where to upload the image.
Added: #
Added: # Default: 'teknik'
Added: # Values:  'imgur', 'teknik'
Added: # Flag:    --image_host
Added: #
Added: # NOTE: If you'd like another image host to be added to Neofetch.
Added: #       Open an issue on github.
Added: image_host="teknik"
Added: 
Added: 
Added: # Misc Options
Added: 
Added: # Stdout mode
Added: # Turn off all colors and disables image backend (ASCII/Image).
Added: # Useful for piping into another command.
Added: # Default: 'off'
Added: # Values: 'on', 'off'
Added: stdout="off"
Added: 
Added: # Config version.
Added: #
Added: # NOTE: Don't change this value, neofetch reads this to determine
Added: # how to handle backwards compatibility.
Added: config_version="3.4.0"
Added: #!/usr/bin/env python3
Added: # -*- coding: utf-8 -*-
Added: 
Added: # If you use GitHub, you need to claim
Added: # Personal access tokens (classic) if you dont ofc
Added: 
Removed: config = load_config()
Added: os.chdir(os.path.dirname(os.path.realpath(__file__))) # Change directory to the script path
Added: config = load_config() # Load configuration from config.json
Added: # os.chdir(config['repo_path']) # Change directory to the repo path
Removed: run_command(f'cp {file_path} {dest_path}')
Added: run_command(f'cp -r {file_path} {dest_path}')
Removed: os.chdir(config['repo_path']) # Change directory to the repo path
