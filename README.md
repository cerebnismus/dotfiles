#### Getting Started


## Update: 2024-04-13 22:52:44
Removed: 
Removed: ## Update: 2024-04-13 22:49:47
Removed: Added: # ~/.bash_logout: executed by bash(1) when login shell exits.
Removed: Added:
Removed: Added: # when leaving the console clear the screen to increase privacy
Removed: Added:
Removed: Added: if [ "$SHLVL" = 1 ]; then
Removed: Added: [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
Removed: Added: fi
Removed: Added: # ~/.bashrc: executed by bash(1) for non-login shells.
Removed: Added: # see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
Removed: Added: # for examples
Removed: Added:
Removed: Added: # If not running interactively, don't do anything
Removed: Added: case $- in
Removed: Added: *i*) ;;
Removed: Added: *) return;;
Removed: Added: esac
Removed: Added:
Removed: Added: # don't put duplicate lines or lines starting with space in the history.
Removed: Added: # See bash(1) for more options
Removed: Added: HISTCONTROL=ignoreboth
Removed: Added:
Removed: Added: # append to the history file, don't overwrite it
Removed: Added: shopt -s histappend
Removed: Added:
Removed: Added: # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
Removed: Added: HISTSIZE=1000
Removed: Added: HISTFILESIZE=2000
Removed: Added:
Removed: Added: # check the window size after each command and, if necessary,
Removed: Added: # update the values of LINES and COLUMNS.
Removed: Added: shopt -s checkwinsize
Removed: Added:
Removed: Added: # If set, the pattern "**" used in a pathname expansion context will
Removed: Added: # match all files and zero or more directories and subdirectories.
Removed: Added: #shopt -s globstar
Removed: Added:
Removed: Added: # make less more friendly for non-text input files, see lesspipe(1)
Removed: Added: [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
Removed: Added:
Removed: Added: # set variable identifying the chroot you work in (used in the prompt below)
Removed: Added: if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
Removed: Added: debian_chroot=$(cat /etc/debian_chroot)
Removed: Added: fi
Removed: Added:
Removed: Added: # set a fancy prompt (non-color, unless we know we "want" color)
Removed: Added: case "$TERM" in
Removed: Added: xterm-color|*-256color) color_prompt=yes;;
Removed: Added: esac
Removed: Added:
Removed: Added: # uncomment for a colored prompt, if the terminal has the capability; turned
Removed: Added: # off by default to not distract the user: the focus in a terminal window
Removed: Added: # should be on the output of commands, not on the prompt
Removed: Added: #force_color_prompt=yes
Removed: Added:
Removed: Added: if [ -n "$force_color_prompt" ]; then
Removed: Added: if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
Removed: Added: # We have color support; assume it's compliant with Ecma-48
Removed: Added: # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
Removed: Added: # a case would tend to support setf rather than setaf.)
Removed: Added: color_prompt=yes
Removed: Added: else
Removed: Added: color_prompt=
Removed: Added: fi
Removed: Added: fi
Removed: Added:
Removed: Added: if [ "$color_prompt" = yes ]; then
Removed: Added: PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
Removed: Added: else
Removed: Added: PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
Removed: Added: fi
Removed: Added: unset color_prompt force_color_prompt
Removed: Added:
Removed: Added: # If this is an xterm set the title to user@host:dir
Removed: Added: case "$TERM" in
Removed: Added: xterm*|rxvt*)
Removed: Added: PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
Removed: Added: ;;
Removed: Added: *)
Removed: Added: ;;
Removed: Added: esac
Removed: Added:
Removed: Added: # enable color support of ls and also add handy aliases
Removed: Added: if [ -x /usr/bin/dircolors ]; then
Removed: Added: test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
Removed: Added: alias ls='ls --color=auto'
Removed: Added: #alias dir='dir --color=auto'
Removed: Added: #alias vdir='vdir --color=auto'
Removed: Added:
Removed: Added: alias grep='grep --color=auto'
Removed: Added: alias fgrep='fgrep --color=auto'
Removed: Added: alias egrep='egrep --color=auto'
Removed: Added: fi
Removed: Added:
Removed: Added: # colored GCC warnings and errors
Removed: Added: #export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
Removed: Added:
Removed: Added: # some more ls aliases
Removed: Added: alias ll='ls -alF'
Removed: Added: alias la='ls -A'
Removed: Added: alias l='ls -CF'
Removed: Added:
Removed: Added: # Add an "alert" alias for long running commands.  Use like so:
Removed: Added: #   sleep 10; alert
Removed: Added: alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
Removed: Added:
Removed: Added: # Alias definitions.
Removed: Added: # You may want to put all your additions into a separate file like
Removed: Added: # ~/.bash_aliases, instead of adding them here directly.
Removed: Added: # See /usr/share/doc/bash-doc/examples in the bash-doc package.
Removed: Added:
Removed: Added: if [ -f ~/.bash_aliases ]; then
Removed: Added: . ~/.bash_aliases
Removed: Added: fi
Removed: Added:
Removed: Added: # enable programmable completion features (you don't need to enable
Removed: Added: # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
Removed: Added: # sources /etc/bash.bashrc).
Removed: Added: if ! shopt -oq posix; then
Removed: Added: if [ -f /usr/share/bash-completion/bash_completion ]; then
Removed: Added: . /usr/share/bash-completion/bash_completion
Removed: Added: elif [ -f /etc/bash_completion ]; then
Removed: Added: . /etc/bash_completion
Removed: Added: fi
Removed: Added: fi
Removed: Added:
Removed: Added: neofetch
Removed: Added: conky.config = {
Removed: Added: update_interval = 1,
Removed: Added: total_run_times = 0,
Removed: Added: net_avg_samples = 1,
Removed: Added: cpu_avg_samples = 1,
Removed: Added: imlib_cache_size = 0,
Removed: Added: double_buffer = true,
Removed: Added: no_buffers = true,
Removed: Added: font = 'FuraCode Nerd Font:pixelsize=11',
Removed: Added: use_xft = true,
Removed: Added: override_utf8_locale = true,
Removed: Added: text_buffer_size = 2048,
Removed: Added: own_window = true,
Removed: Added: own_window_type = 'normal',
Removed: Added: own_window_transparent = false,
Removed: Added: own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
Removed: Added: own_window_argb_visual = true,
Removed: Added: own_window_argb_value = 178,
Removed: Added: own_window_colour = '#000000',
Removed: Added: minimum_size = '360 500',
Removed: Added: alignment = 'middle_left',
Removed: Added: gap_x = 15,
Removed: Added: gap_y = 98,
Removed: Added: draw_shades = false,
Removed: Added: default_color = '#ffffff',
Removed: Added: default_shade_color = '#000000',
Removed: Added: color1 = '#1CEBD3',
Removed: Added: color2 = '#1B87AB',
Removed: Added: color3 = '#569AE0',
Removed: Added: color4 = '#CEE1F8',
Removed: Added: color5 = '#E80DF5',
Removed: Added: color6 = '#A00BBF'
Removed: Added: }
Removed: Added:
Removed: Added: conky.text = [[
Removed: Added: ${color4}${font ConkySymbols:size=14}a${font} S Y S T E M » $hr ${color}
Removed: Added:
Removed: Added: ${goto 10}OS:${color2}${alignr 10}${exec cat /etc/*-release | grep 'DISTRIB' | awk -F '=' 'NR==1 {print $2}'} ${exec cat /etc/*-release | grep 'VERSION' | awk -F '"' 'NR==2 {print $2}'}${color}
Removed: Added: ${goto 10}Shell:${color2}${alignr 10}${exec gnome-shell --version}${color}
Removed: Added: ${goto 10}${color}Kernel:${color2}${alignr 10}${kernel}${color}
Removed: Added: ${goto 10}Datetime: ${color2}${alignr 10}${time %A} ${time %d %B %Y} ${time %I}:${time %M %p}${color}
Removed: Added: ${goto 10}Uptime:${color6}${alignr 10}$uptime${color}
Removed: Added:
Removed: Added: ${color4}${font ConkySymbols:size=14}f${font} C P U  &  G P U  &  M E M O R Y » $hr${color}
Removed: Added:
Removed: Added: ${goto 10}CPU:${color2}${alignr 10}${exec cat /proc/cpuinfo|grep 'model name'|awk -F ' ' 'NR==1 {print $6}'}${color}
Removed: Added: ${goto 10}Active Governor: ${color2}${alignr 10}${execi 1 cut -b 1-20 /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor}${color}
Removed: Added: ${goto 10}Clock Rate:${color6}${alignr 10}${freq_g 1}GHz${color}
Removed: Added: ${goto 10}CPU Temp:${color6}${alignr 10}${exec cut -b 1-2 /sys/class/thermal/thermal_zone0/temp}°C${color}
Removed: Added:
Removed: Added: ${goto 10}Graphics cards:${color2}${alignr 10}${exec hwinfo --gfxcard | grep "Device" | awk -F '"' 'NR==1{print $2}'}${color}
Removed: Added: ${goto 10}Mesa Driver:${color2}${alignr 10}${execi 600 glxinfo | grep "OpenGL version string" | awk 'NR==1{print $8}' | cut -c 1-8}${color}
Removed: Added: ${goto 10}X.Org:${color2}${alignr 10}${exec dpkg -l | grep xserver-xorg-core | awk 'NR==1{print $3}' | cut -c 3-10}${color}
Removed: Added:
Removed: Added: ${goto 10}RAM: ${color6}$mem${color} / ${color2}$memmax ${color6}${alignr 10}$memperc% ${color1}${membar 8,120}${color}
Removed: Added: ${goto 10}SWAP: ${color6}$swap${color} / ${color2}$swapmax ${color6}${alignr 10}$swapperc% ${color1}${swapbar 8,120}${color}
Removed: Added:
Removed: Added: ${color4}${font ConkySymbols:size=14}b${font} N E T W O R K » $hr${color}
Removed: Added:
Removed: Added: ${goto 10}Hostname: ${color2}${alignr 10}${exec hostname}${color}
Removed: Added: ${goto 10}IP LAN: ${color2}${alignr 10}${addr enp2s0}${color}
Removed: Added: ${goto 10}IP WAN: ${color2}${alignr 10}${exec curl ipinfo.io/ip}${color}
Removed: Added: ${goto 10}IP WLAN: ${color2}${alignr 10}${addr wlp3s0}${color}
Removed: Added: ${goto 10}WiFi SSID: ${color2}${alignr 10}${wireless_essid wlp3s0}${color}
Removed: Added: ${goto 10}WiFi Signal: ${alignr 10}${color6}${wireless_link_qual_perc wlp3s0} %${color}
Removed: Added:
Removed: Added: ${goto 10}Upload Speed: ${alignr 10}${color6}${upspeed enp2s0}${color} ${color5}${upspeedgraph enp2s0 10,120 fc8c3b c6396b -t}${color}
Removed: Added: ${goto 10}Down Speed: ${alignr 10}${color6}${downspeed enp2s0}${color} ${color5}${downspeedgraph enp2s0 10,120 fc8c3b c6396b -t}${color}
Removed: Added: ${voffset -5}
Removed: Added:
Removed: Added: ${goto 10}Total Up: ${goto 80}${color2}${totalup enp2s0} ${color}${alignr 20}Total Down: ${alignr 10}${color2}${totaldown enp2s0}
Removed: Added:
Removed: Added: ${color4}${font ConkySymbols:size=14}k${font} S T O R A G E » $hr${color}
Removed: Added:
Removed: Added: ${goto 10}SSD:${alignc -20}${color6}${fs_used /}${color} / ${color2}${fs_size /} ${color6}${alignr 10}${fs_used_perc /}%${color}
Removed: Added: ${goto 10}${color1}${fs_bar 8,300 /}${color}
Removed: Added:
Removed: Added: ${goto 10}Disk I/O Read:  ${color6}${alignr 10}${diskio_read} ${color5}${diskiograph_read 10,120 ADFF2F 32CD32 750}${color}
Removed: Added: ${goto 10}Disk I/O Write: ${color6}${alignr 10}${diskio_write}${color} ${color5}${diskiograph_write 10,120 FF0000 8B0000 750}${color}
Removed: Added:
Removed: Added: ${color4}${font ConkySymbols:size=14}n${font} P R O C E S S E S » $hr${color}
Removed: Added:
Removed: Added: ${goto 10}${color}NAME${goto 160}PID${goto 230}CPU%${goto 310}MEM${color}${font}
Removed: Added: ${color4}${goto 10}${stippled_hr}${color}
Removed: Added: ${goto 10}${color1}${top name 1}${color6}${font}${goto 140}${top pid 1}${goto 225}${top cpu 1}${goto 295}${top mem_res 1}
Removed: Added: ${goto 10}${color1}${top name 2}${color6}${font}${goto 140}${top pid 2}${goto 225}${top cpu 2}${goto 295}${top mem_res 2}
Removed: Added: ${goto 10}${color1}${top name 3}${color6}${font}${goto 140}${top pid 3}${goto 225}${top cpu 3}${goto 295}${top mem_res 3}
Removed: Added: ${goto 10}${color1}${top name 4}${color6}${font}${goto 140}${top pid 4}${goto 225}${top cpu 4}${goto 295}${top mem_res 4}
Removed: Added: ${goto 10}${color1}${top name 5}${color6}${font}${goto 140}${top pid 5}${goto 225}${top cpu 5}${goto 295}${top mem_res 5}
Removed: Added:
Removed: Added: ${goto 10}${color}Processes: ${color6}$processes ${alignr 10}${color}Running: ${color6}$running_processes
Removed: Added:
Removed: Added: ]];
Removed: Added: 22381f78-7ba1-41cc-94b8-3a2eca9a97c5
Removed: Added: 5711cb03-a63a-44e8-bf0b-ed6fb847c38b
Removed: Added: # ~/.profile: executed by the command interpreter for login shells.
Removed: Added: # This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
Removed: Added: # exists.
Removed: Added: # see /usr/share/doc/bash/examples/startup-files for examples.
Removed: Added: # the files are located in the bash-doc package.
Removed: Added:
Removed: Added: # the default umask is set in /etc/profile; for setting the umask
Removed: Added: # for ssh logins, install and configure the libpam-umask package.
Removed: Added: #umask 022
Removed: Added:
Removed: Added: # if running bash
Removed: Added: if [ -n "$BASH_VERSION" ]; then
Removed: Added: # include .bashrc if it exists
Removed: Added: if [ -f "$HOME/.bashrc" ]; then
Removed: Added: . "$HOME/.bashrc"
Removed: Added: fi
Removed: Added: fi
Removed: Added:
Removed: Added: # set PATH so it includes user's private bin if it exists
Removed: Added: if [ -d "$HOME/bin" ] ; then
Removed: Added: PATH="$HOME/bin:$PATH"
Removed: Added: fi
Removed: Added:
Removed: Added: # set PATH so it includes user's private bin if it exists
Removed: Added: if [ -d "$HOME/.local/bin" ] ; then
Removed: Added: PATH="$HOME/.local/bin:$PATH"
Removed: Added: fi
Removed: Added:
Removed: Added: TZ='Europe/Istanbul'; export TZ
Removed: Added:
Removed: Added: xset s off
Removed: Added: xset -dpms
Removed: Added: xrandr --output eDP-1 --off
Removed: Added: conky -d -c ~/.conkyrc
Removed: Added: #xrandr --auto && xrandr --output eDP-1 --off
Removed: Added: #volumeicon
Removed: Added: # Generated by /usr/bin/select-editor
Removed: Added: SELECTED_EDITOR="/usr/bin/nvim"
Removed: Added: #### Getting Started
Removed: Added:
Removed: Added: ## shadow
Removed: Added: shadow = true;
Removed: Added: no-dnd-shadow = true;
Removed: Added: no-dock-shadow = true;
Removed: Added: clear-shadow = true;
Removed: Added: shadow-radius = 12;
Removed: Added: shadow-offset-x = -12;
Removed: Added: shadow-offset-y = -12;
Removed: Added: shadow-opacity = 0.95;
Removed: Added: shadow-red = 0.18;
Removed: Added: shadow-green = 0.20;
Removed: Added: shadow-blue = 0.25;
Removed: Added: shadow-exclude = [ "class_g = 'Cairo-clock'" ,
Removed: Added: "class_g = 'CoverGloobus'",
Removed: Added: "class_g = 'Tilda'",
Removed: Added: "class_g = 'Conky'",
Removed: Added: "class_g ?= 'Notify-osd'",
Removed: Added: "class_g = 'Firefox'",
Removed: Added: "class_g = 'Firefox-esr'",
Removed: Added: "class_g = 'Dmenu'",
Removed: Added: "name = 'Notification'",
Removed: Added: "_GTK_FRAME_EXTENTS@:c"
Removed: Added: ];
Removed: Added:
Removed: Added: ## fading
Removed: Added: fading = true;
Removed: Added: fade-delta = 0.25;
Removed: Added: fade-in-step = 0.02;
Removed: Added: fade-out-step = 0.02;
Removed: Added: fade-exclude = [
Removed: Added: ];
Removed: Added:
Removed: Added: ## other
Removed: Added: backend = "xrender";
Removed: Added: mark-wmwin-focused = true;
Removed: Added: mark-ovredir-focused = true;
Removed: Added: detect-rounded-corners = true;
Removed: Added: detect-client-opacity = true;
Removed: Added: refresh-rate = 0;
Removed: Added: vsync = "none";
Removed: Added: dbe = false;
Removed: Added: paint-on-overlay = true;
Removed: Added: focus-exclude = [ "class_g = 'Cairo-clock'" ,
Removed: Added: "class_g = 'CoverGloobus'",
Removed: Added: "class_g = 'Tilda'",
Removed: Added: "class_g = 'Firefox'",
Removed: Added: "class_g = 'Firefox-esr'"
Removed: Added: ];
Removed: Added: detect-transient = true;
Removed: Added: detect-client-leader = true;
Removed: Added: invert-color-include = [ ];
Removed: Added: glx-copy-from-front = false;
Removed: Added: glx-swap-method = "undefined";
Removed: Added: wintypes:
Removed: Added: {
Removed: Added: tooltip = { fade = true; shadow = true; opacity = 0.75; focus = true; };
Removed: Added: };
Removed: Removed: "/home/cerebnismus/.config/dunst/dunst",
Removed: Removed: "/home/cerebnismus/.config/htop/htop",
Removed: Added: "/home/cerebnismus/.config/dunst/",
Removed: Added: "/home/cerebnismus/.config/htop/",
Removed: Removed: "/home/cerebnismus/.LEAVEME.md"
Removed: Added: "/home/cerebnismus/README.md"
Removed: Added: [global]
Removed: Added: monitor = 0
Removed: Added: follow = mouse
Removed: Added: geometry = "250x50-24+24"
Removed: Added: indicate_hidden = yes
Removed: Added: shrink = no
Removed: Added: separator_height = 0
Removed: Added: padding = 16
Removed: Added: horizontal_padding = 24
Removed: Added: frame_width = 2
Removed: Added: sort = no
Removed: Added: idle_threshold = 120
Removed: Added: font = Noto Sans 8
Removed: Added: line_height = 4
Removed: Added: markup = full
Removed: Added: format = "<b>%s</b>\n%b"
Removed: Added: alignment = left
Removed: Added: show_age_threshold = 60
Removed: Added: word_wrap = yes
Removed: Added: ignore_newline = no
Removed: Added: stack_duplicates = false
Removed: Added: hide_duplicate_count = yes
Removed: Added: show_indicators = no
Removed: Added: icon_position = off
Removed: Added: sticky_history = yes
Removed: Added: history_length = 20
Removed: Added: browser = /usr/bin/firefox -new-tab
Removed: Added: always_run_script = true
Removed: Added: title = Dunst
Removed: Added: class = Dunst
Removed: Added:
Removed: Added: [shortcuts]
Removed: Added: close = ctrl+space
Removed: Added: close_all = ctrl+shift+space
Removed: Added: history = ctrl+grave
Removed: Added: context = ctrl+shift+period
Removed: Added:
Removed: Added: [urgency_low]
Removed: Added: background = "#2f343f"
Removed: Added: foreground = "#d8dee8"
Removed: Added: timeout = 2
Removed: Added:
Removed: Added: [urgency_normal]
Removed: Added: background = "#2f343f"
Removed: Added: foreground = "#d8dee8"
Removed: Added: timeout = 4
Removed: Added:
Removed: Added: [urgency_critical]
Removed: Added: background = "#2f343f"
Removed: Added: foreground = "#d8dee8"
Removed: Added: frame_color = "#bf616a"
Removed: Added: timeout = 0
Removed: Added: # Beware! This file is rewritten by htop when settings are changed in the interface.
Removed: Added: # The parser is also very primitive, and not human-friendly.
Removed: Added: fields=0 48 17 18 38 39 40 2 46 47 49 1
Removed: Added: sort_key=46
Removed: Added: sort_direction=1
Removed: Added: hide_threads=0
Removed: Added: hide_kernel_threads=1
Removed: Added: hide_userland_threads=0
Removed: Added: shadow_other_users=0
Removed: Added: show_thread_names=0
Removed: Added: show_program_path=1
Removed: Added: highlight_base_name=0
Removed: Added: highlight_megabytes=1
Removed: Added: highlight_threads=1
Removed: Added: tree_view=0
Removed: Added: header_margin=1
Removed: Added: detailed_cpu_time=0
Removed: Added: cpu_count_from_zero=0
Removed: Added: update_process_names=0
Removed: Added: account_guest_in_cpu_meter=0
Removed: Added: color_scheme=0
Removed: Added: delay=15
Removed: Added: left_meters=AllCPUs Memory Swap
Removed: Added: left_meter_modes=1 1 1
Removed: Added: right_meters=Tasks LoadAverage Uptime
Removed: Added: right_meter_modes=2 2 2
Removed: Added: # Beware! This file is rewritten by htop when settings are changed in the interface.
Removed: Added: # The parser is also very primitive, and not human-friendly.
Removed: Added: fields=0 48 17 18 38 39 40 2 46 47 49 1
Removed: Added: sort_key=46
Removed: Added: sort_direction=-1
Removed: Added: tree_sort_key=0
Removed: Added: tree_sort_direction=1
Removed: Added: hide_kernel_threads=1
Removed: Added: hide_userland_threads=0
Removed: Added: shadow_other_users=0
Removed: Added: show_thread_names=0
Removed: Added: show_program_path=1
Removed: Added: highlight_base_name=0
Removed: Added: highlight_megabytes=1
Removed: Added: highlight_threads=1
Removed: Added: highlight_changes=0
Removed: Added: highlight_changes_delay_secs=5
Removed: Added: find_comm_in_cmdline=1
Removed: Added: strip_exe_from_cmdline=1
Removed: Added: show_merged_command=0
Removed: Added: tree_view=0
Removed: Added: tree_view_always_by_pid=0
Removed: Added: header_margin=1
Removed: Added: detailed_cpu_time=0
Removed: Added: cpu_count_from_one=0
Removed: Added: show_cpu_usage=1
Removed: Added: show_cpu_frequency=0
Removed: Added: show_cpu_temperature=0
Removed: Added: degree_fahrenheit=0
Removed: Added: update_process_names=0
Removed: Added: account_guest_in_cpu_meter=0
Removed: Added: color_scheme=0
Removed: Added: enable_mouse=1
Removed: Added: delay=15
Removed: Added: left_meters=AllCPUs Memory Swap
Removed: Added: left_meter_modes=1 1 1
Removed: Added: right_meters=Tasks LoadAverage Uptime
Removed: Added: right_meter_modes=2 2 2
Removed: Added: hide_function_bar=0
Removed: Added: # set modifier
Removed: Added: set $super Mod4
Removed: Added: set $alt Mod1
Removed: Added:
Removed: Added: # set font
Removed: Added: font pango: Noto Sans 8
Removed: Added:
Removed: Added: # Use Mouse+$super to drag floating windows to their wanted position
Removed: Added: floating_modifier $super
Removed: Added:
Removed: Added: #autostart
Removed: Added: exec --no-startup-id hsetroot -center ~/Downloads/wallpaper.png
Removed: Added: exec --no-startup-id xsettingsd &
Removed: Added: exec --no-startup-id compton -b
Removed: Added:
Removed: Added: # start a terminal
Removed: Added: bindsym $super+Return exec i3-sensible-terminal
Removed: Added:
Removed: Added: # start dmenu (a program launcher)
Removed: Added: bindsym $super+Shift+d exec i3-dmenu-desktop --dmenu="dmenu -i -fn 'Noto Sans:size=8'"
Removed: Added: bindsym $super+d exec rofi -lines 12 -padding 18 -width 60 -location 0 -show run -sidebar-mode -columns 3 -font 'Noto Sans 8'
Removed: Added:
Removed: Added: # common apps keybinds
Removed: Added: bindsym Print exec scrot 'Cheese_%a-%d%b%y_%H.%M.png' -e 'viewnior ~/$f'
Removed: Added: bindsym $super+l exec i3lock -i ~/Downloads/wallpaper.png
Removed: Added: bindsym $super+Shift+w exec firefox
Removed: Added: bindsym $super+Shift+f exec code-insiders;workspace 3;floating enable
Removed: Added: bindsym $super+Shift+g exec geany
Removed: Added:
Removed: Added: #change volume
Removed: Added: bindsym XF86AudioRaiseVolume exec amixer -q set Master 5%+
Removed: Added: bindsym XF86AudioLowerVolume exec amixer -q set Master 5%-
Removed: Added: bindsym XF86AudioMute exec amixer set Master toggle
Removed: Added:
Removed: Added: # music control
Removed: Added: bindsym XF86AudioNext exec mpc next
Removed: Added: bindsym XF86AudioPrev exec mpc prev
Removed: Added: bindsym XF86AudioPlay exec mpc toggle
Removed: Added: bindsym XF86AudioStop exec mpc stop
Removed: Added:
Removed: Added: # kill focused window
Removed: Added: bindsym $super+c kill
Removed: Added: bindsym $alt+F4 kill
Removed: Added:
Removed: Added: # change focus
Removed: Added: bindsym $super+Left focus left
Removed: Added: bindsym $super+Down focus down
Removed: Added: bindsym $super+Up focus up
Removed: Added: bindsym $super+Right focus right
Removed: Added:
Removed: Added: # move focused window
Removed: Added: bindsym $super+Shift+Left move left
Removed: Added: bindsym $super+Shift+Down move down
Removed: Added: bindsym $super+Shift+Up move up
Removed: Added: bindsym $super+Shift+Right move right
Removed: Added:
Removed: Added: # split in horizontal orientation
Removed: Added: bindsym $super+h split h
Removed: Added:
Removed: Added: # split in vertical orientation
Removed: Added: bindsym $super+v split v
Removed: Added:
Removed: Added: # enter fullscreen mode for the focused container
Removed: Added: bindsym $super+f fullscreen toggle
Removed: Added:
Removed: Added: # change container layout split
Removed: Added: bindsym $super+s layout toggle split
Removed: Added:
Removed: Added: # toggle tiling / floating
Removed: Added: bindsym $super+space floating toggle
Removed: Added:
Removed: Added: # change focus between tiling / floating windows
Removed: Added: bindsym $super+Shift+space focus mode_toggle
Removed: Added:
Removed: Added: # switch to workspace
Removed: Added: bindsym $alt+Control+Right workspace next
Removed: Added: bindsym $alt+Control+Left workspace prev
Removed: Added: bindsym $super+1 workspace 1
Removed: Added: bindsym $super+2 workspace 2
Removed: Added: bindsym $super+3 workspace 3
Removed: Added: bindsym $super+4 workspace 4
Removed: Added: bindsym $super+5 workspace 5
Removed: Added: bindsym $super+6 workspace 6
Removed: Added:
Removed: Added: # move focused container to workspace
Removed: Added: bindsym $super+Shift+1 move container to workspace 1
Removed: Added: bindsym $super+Shift+2 move container to workspace 2
Removed: Added: bindsym $super+Shift+3 move container to workspace 3
Removed: Added: bindsym $super+Shift+4 move container to workspace 4
Removed: Added: bindsym $super+Shift+5 move container to workspace 5
Removed: Added: bindsym $super+Shift+6 move container to workspace 6
Removed: Added:
Removed: Added: # restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
Removed: Added: bindsym $super+Shift+r restart
Removed: Added:
Removed: Added: # exit i3
Removed: Added: bindsym $super+q exec "i3-nagbar -t warning -m 'Really, exit?' -b 'Yes' 'i3-msg exit'"
Removed: Added:
Removed: Added: # resize window (you can also use the mouse for that)
Removed: Added: mode "resize" {
Removed: Added: bindsym Left resize shrink width 5 px or 5 ppt
Removed: Added: bindsym Down resize grow height 5 px or 5 ppt
Removed: Added: bindsym Up resize shrink height 5 px or 5 ppt
Removed: Added: bindsym Right resize grow width 5 px or 5 ppt
Removed: Added: bindsym Return mode "default"
Removed: Added: }
Removed: Added: bindsym $super+r mode "resize"
Removed: Added:
Removed: Added: # panel
Removed: Added: bar {
Removed: Added: colors {
Removed: Added: background #2f343f
Removed: Added: statusline #2f343f
Removed: Added: separator #4b5262
Removed: Added:
Removed: Added: # colour of border, background, and text
Removed: Added: focused_workspace       #2f343f #bf616a #d8dee8
Removed: Added: active_workspace        #2f343f #2f343f #d8dee8
Removed: Added: inactive_workspace      #2f343f #2f343f #d8dee8
Removed: Added: urgent_workspacei       #2f343f #ebcb8b #2f343f
Removed: Added: }
Removed: Added: status_command i3status
Removed: Added: }
Removed: Added:
Removed: Added: # window rules, you can find the window class using xprop
Removed: Added: for_window [class=".*"] border pixel 4
Removed: Added: assign [class=URxvt] 1
Removed: Added: assign [class=Firefox|Transmission-gtk] 2
Removed: Added: for_window [class=Gnome-terminal|Viewnior|feh|Audacious|File-roller|Lxappearance|Lxtask|Pavucontrol] floating enable
Removed: Added: for_window [class=URxvt|Firefox|firefox|Geany|Evince|Soffice|libreoffice*|mpv|Ghb|Xfburn|Gimp*|Inkscape|Vlc|Lxappearance|Audacity] floating enable
Removed: Added: for_window [class=Xfburn|GParted|System-config-printer.py|Lxtask|Pavucontrol|Exo-helper*|Lxrandr|Arandr] focus
Removed: Added:
Removed: Added: # colour of border, background, text, indicator, and child_border
Removed: Added: client.focused              #bf616a #2f343f #d8dee8 #bf616a #d8dee8
Removed: Added: client.focused_inactive     #2f343f #2f343f #d8dee8 #2f343f #2f343f
Removed: Added: client.unfocused            #2f343f #2f343f #d8dee8 #2f343f #2f343f
Removed: Added: client.urgent               #2f343f #2f343f #d8dee8 #2f343f #2f343f
Removed: Added: client.placeholder          #2f343f #2f343f #d8dee8 #2f343f #2f343f
Removed: Added: client.background           #2f343f
Removed: Added: # This file has been auto-generated by i3-config-wizard(1).
Removed: Added: # It will not be overwritten, so edit it as you like.
Removed: Added: #
Removed: Added: # Should you change your keyboard layout some time, delete
Removed: Added: # this file and re-run i3-config-wizard(1).
Removed: Added: #
Removed: Added:
Removed: Added: # i3 config file (v4)
Removed: Added: #
Removed: Added: # Please see https://i3wm.org/docs/userguide.html for a complete reference!
Removed: Added:
Removed: Added: set $mod Mod4
Removed: Added:
Removed: Added: # Font for window titles. Will also be used by the bar unless a different font
Removed: Added: # is used in the bar {} block below.
Removed: Added: font pango:monospace 8
Removed: Added:
Removed: Added: # This font is widely installed, provides lots of unicode glyphs, right-to-left
Removed: Added: # text rendering and scalability on retina/hidpi displays (thanks to pango).
Removed: Added: #font pango:DejaVu Sans Mono 8
Removed: Added:
Removed: Added: # Start XDG autostart .desktop files using dex. See also
Removed: Added: # https://wiki.archlinux.org/index.php/XDG_Autostart
Removed: Added: exec --no-startup-id dex --autostart --environment i3
Removed: Added:
Removed: Added: # The combination of xss-lock, nm-applet and pactl is a popular choice, so
Removed: Added: # they are included here as an example. Modify as you see fit.
Removed: Added:
Removed: Added: # xss-lock grabs a logind suspend inhibit lock and will use i3lock to lock the
Removed: Added: # screen before suspend. Use loginctl lock-session to lock your screen.
Removed: Added: exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork
Removed: Added:
Removed: Added: # NetworkManager is the most popular way to manage wireless networks on Linux,
Removed: Added: # and nm-applet is a desktop environment-independent system tray GUI for it.
Removed: Added: exec --no-startup-id nm-applet
Removed: Added:
Removed: Added: # Use pactl to adjust volume in PulseAudio.
Removed: Added: set $refresh_i3status killall -SIGUSR1 i3status
Removed: Added: bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status
Removed: Added: bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status
Removed: Added: bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
Removed: Added: bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status
Removed: Added:
Removed: Added: # Use Mouse+$mod to drag floating windows to their wanted position
Removed: Added: floating_modifier $mod
Removed: Added:
Removed: Added: # start a terminal
Removed: Added: bindsym $mod+Return exec i3-sensible-terminal
Removed: Added:
Removed: Added: # kill focused window
Removed: Added: bindsym $mod+Shift+q kill
Removed: Added:
Removed: Added: # start dmenu (a program launcher)
Removed: Added: bindsym $mod+d exec --no-startup-id dmenu_run
Removed: Added: # A more modern dmenu replacement is rofi:
Removed: Added: # bindcode $mod+40 exec "rofi -modi drun,run -show drun"
Removed: Added: # There also is i3-dmenu-desktop which only displays applications shipping a
Removed: Added: # .desktop file. It is a wrapper around dmenu, so you need that installed.
Removed: Added: # bindcode $mod+40 exec --no-startup-id i3-dmenu-desktop
Removed: Added:
Removed: Added: # change focus
Removed: Added: bindsym $mod+j focus left
Removed: Added: bindsym $mod+k focus down
Removed: Added: bindsym $mod+l focus up
Removed: Added: bindsym $mod+semicolon focus right
Removed: Added:
Removed: Added: # alternatively, you can use the cursor keys:
Removed: Added: bindsym $mod+Left focus left
Removed: Added: bindsym $mod+Down focus down
Removed: Added: bindsym $mod+Up focus up
Removed: Added: bindsym $mod+Right focus right
Removed: Added:
Removed: Added: # move focused window
Removed: Added: bindsym $mod+Shift+j move left
Removed: Added: bindsym $mod+Shift+k move down
Removed: Added: bindsym $mod+Shift+l move up
Removed: Added: bindsym $mod+Shift+semicolon move right
Removed: Added:
Removed: Added: # alternatively, you can use the cursor keys:
Removed: Added: bindsym $mod+Shift+Left move left
Removed: Added: bindsym $mod+Shift+Down move down
Removed: Added: bindsym $mod+Shift+Up move up
Removed: Added: bindsym $mod+Shift+Right move right
Removed: Added:
Removed: Added: # split in horizontal orientation
Removed: Added: bindsym $mod+h split h
Removed: Added:
Removed: Added: # split in vertical orientation
Removed: Added: bindsym $mod+v split v
Removed: Added:
Removed: Added: # enter fullscreen mode for the focused container
Removed: Added: bindsym $mod+f fullscreen toggle
Removed: Added:
Removed: Added: # change container layout (stacked, tabbed, toggle split)
Removed: Added: bindsym $mod+s layout stacking
Removed: Added: bindsym $mod+w layout tabbed
Removed: Added: bindsym $mod+e layout toggle split
Removed: Added:
Removed: Added: # toggle tiling / floating
Removed: Added: bindsym $mod+Shift+space floating toggle
Removed: Added:
Removed: Added: # change focus between tiling / floating windows
Removed: Added: bindsym $mod+space focus mode_toggle
Removed: Added:
Removed: Added: # focus the parent container
Removed: Added: bindsym $mod+a focus parent
Removed: Added:
Removed: Added: # focus the child container
Removed: Added: #bindsym $mod+d focus child
Removed: Added:
Removed: Added: # Define names for default workspaces for which we configure key bindings later on.
Removed: Added: # We use variables to avoid repeating the names in multiple places.
Removed: Added: set $ws1 "1"
Removed: Added: set $ws2 "2"
Removed: Added: set $ws3 "3"
Removed: Added: set $ws4 "4"
Removed: Added: set $ws5 "5"
Removed: Added: set $ws6 "6"
Removed: Added: set $ws7 "7"
Removed: Added: set $ws8 "8"
Removed: Added: set $ws9 "9"
Removed: Added: set $ws10 "10"
Removed: Added:
Removed: Added: # switch to workspace
Removed: Added: bindsym $mod+1 workspace number $ws1
Removed: Added: bindsym $mod+2 workspace number $ws2
Removed: Added: bindsym $mod+3 workspace number $ws3
Removed: Added: bindsym $mod+4 workspace number $ws4
Removed: Added: bindsym $mod+5 workspace number $ws5
Removed: Added: bindsym $mod+6 workspace number $ws6
Removed: Added: bindsym $mod+7 workspace number $ws7
Removed: Added: bindsym $mod+8 workspace number $ws8
Removed: Added: bindsym $mod+9 workspace number $ws9
Removed: Added: bindsym $mod+0 workspace number $ws10
Removed: Added:
Removed: Added: # move focused container to workspace
Removed: Added: bindsym $mod+Shift+1 move container to workspace number $ws1
Removed: Added: bindsym $mod+Shift+2 move container to workspace number $ws2
Removed: Added: bindsym $mod+Shift+3 move container to workspace number $ws3
Removed: Added: bindsym $mod+Shift+4 move container to workspace number $ws4
Removed: Added: bindsym $mod+Shift+5 move container to workspace number $ws5
Removed: Added: bindsym $mod+Shift+6 move container to workspace number $ws6
Removed: Added: bindsym $mod+Shift+7 move container to workspace number $ws7
Removed: Added: bindsym $mod+Shift+8 move container to workspace number $ws8
Removed: Added: bindsym $mod+Shift+9 move container to workspace number $ws9
Removed: Added: bindsym $mod+Shift+0 move container to workspace number $ws10
Removed: Added:
Removed: Added: # reload the configuration file
Removed: Added: bindsym $mod+Shift+c reload
Removed: Added: # restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
Removed: Added: bindsym $mod+Shift+r restart
Removed: Added: # exit i3 (logs you out of your X session)
Removed: Added: bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"
Removed: Added:
Removed: Added: # resize window (you can also use the mouse for that)
Removed: Added: mode "resize" {
Removed: Added: # These bindings trigger as soon as you enter the resize mode
Removed: Added:
Removed: Added: # Pressing left will shrink the window’s width.
Removed: Added: # Pressing right will grow the window’s width.
Removed: Added: # Pressing up will shrink the window’s height.
Removed: Added: # Pressing down will grow the window’s height.
Removed: Added: bindsym j resize shrink width 10 px or 10 ppt
Removed: Added: bindsym k resize grow height 10 px or 10 ppt
Removed: Added: bindsym l resize shrink height 10 px or 10 ppt
Removed: Added: bindsym semicolon resize grow width 10 px or 10 ppt
Removed: Added:
Removed: Added: # same bindings, but for the arrow keys
Removed: Added: bindsym Left resize shrink width 10 px or 10 ppt
Removed: Added: bindsym Down resize grow height 10 px or 10 ppt
Removed: Added: bindsym Up resize shrink height 10 px or 10 ppt
Removed: Added: bindsym Right resize grow width 10 px or 10 ppt
Removed: Added:
Removed: Added: # back to normal: Enter or Escape or $mod+r
Removed: Added: bindsym Return mode "default"
Removed: Added: bindsym Escape mode "default"
Removed: Added: bindsym $mod+r mode "default"
Removed: Added: }
Removed: Added:
Removed: Added: bindsym $mod+r mode "resize"
Removed: Added:
Removed: Added: # Start i3bar to display a workspace bar (plus the system information i3status
Removed: Added: # finds out, if available)
Removed: Added: bar {
Removed: Added: status_command i3status
Removed: Added: }
Removed: Added: general {
Removed: Added: output_format = "i3bar"
Removed: Added: colors = false
Removed: Added: markup = pango
Removed: Added: interval = 5
Removed: Added: color_good = '#2f343f'
Removed: Added: color_degraded = '#ebcb8b'
Removed: Added: color_bad = '#ba5e57'
Removed: Added: }
Removed: Added:
Removed: Added: order += "load"
Removed: Added: order += "cpu_temperature 0"
Removed: Added: order += "disk /"
Removed: Added: order += "disk /home"
Removed: Added: order += "ethernet enp2s0"
Removed: Added: order += "wireless wlp3s0"
Removed: Added: order += "volume master"
Removed: Added: order += "battery 1"
Removed: Added: order += "tztime local"
Removed: Added:
Removed: Added: load {
Removed: Added: format = "<span background='#f59335'>  %5min Load </span>"
Removed: Added: }
Removed: Added:
Removed: Added: cpu_temperature 0 {
Removed: Added: format = "<span background='#bf616a'>  %degrees °C </span>"
Removed: Added: path = "/sys/class/thermal/thermal_zone0/temp"
Removed: Added: }
Removed: Added:
Removed: Added: disk "/" {
Removed: Added: format = "<span background='#fec7cd'>  %free Free </span>"
Removed: Added: }
Removed: Added:
Removed: Added: disk "/home" {
Removed: Added: format = "<span background='#a1d569'>  %free Free </span>"
Removed: Added: }
Removed: Added:
Removed: Added: ethernet enp2s0 {
Removed: Added: format_up = "<span background='#88c0d0'>  %ip </span>"
Removed: Added: format_down = "<span background='#88c0d0'>  Disconnected </span>"
Removed: Added: }
Removed: Added:
Removed: Added: wireless wlp3s0 {
Removed: Added: format_up = "<span background='#b48ead'>  %essid </span>"
Removed: Added: format_down = "<span background='#b48ead'>  Disconnected </span>"
Removed: Added: }
Removed: Added:
Removed: Added: volume master {
Removed: Added: format = "<span background='#ebcb8b'>  %volume </span>"
Removed: Added: format_muted = "<span background='#ebcb8b'>  Muted </span>"
Removed: Added: device = "default"
Removed: Added: mixer = "Master"
Removed: Added: mixer_idx = 0
Removed: Added: }
Removed: Added:
Removed: Added: battery 1 {
Removed: Added: last_full_capacity = true
Removed: Added: format = "<span background='#a3be8c'>  %status %percentage </span>"
Removed: Added: format_down = "No Battery"
Removed: Added: status_chr = "Charging"
Removed: Added: status_bat = "Battery"
Removed: Added: status_unk = "Unknown"
Removed: Added: status_full = "Charged"
Removed: Added: path = "/sys/class/power_supply/BAT0/uevent"
Removed: Added: low_threshold = 10
Removed: Added: }
Removed: Added:
Removed: Added: tztime local {
Removed: Added: format = "<span background='#81a1c1'> %time </span>"
Removed: Added: format_time = " %a %-d %b %H:%M"
Removed: Added: }
Removed: Added:
Removed: Added: print_info() {
Removed: Added: info title
Removed: Added: info underline
Removed: Added:
Removed: Added: info "Local IP" local_ip
Removed: Added: info "RemoteIP" public_ip
Removed: Added: info "OS" distro
Removed: Added: info "Host" model
Removed: Added: info "Kernel" kernel
Removed: Added: info "Uptime" uptime
Removed: Added: info "Packax" packages
Removed: Added: info "Shell" shell
Removed: Added: info "Resxx" resolution
Removed: Added: # info "DE" de
Removed: Added: info "WM" wm
Removed: Added: info "WM Theme" wm_theme
Removed: Added: info "Theme" theme
Removed: Added: info "Icons" icons
Removed: Added: info "Terminal" term
Removed: Added: info "Terminal Font" term_font
Removed: Added: info "CPU" cpu
Removed: Added: info "GPU" gpu
Removed: Added: info "MEM" memory
Removed: Added: info "GPU Driver" gpu_driver  # Linux/macOS only
Removed: Added: info "CPU Usage " cpu_usage
Removed: Added: # info "Disk      " disk
Removed: Added: info "Battery" battery
Removed: Added: # info "Font " font
Removed: Added: # info "Song" song
Removed: Added: # info "Users" users
Removed: Added: # info "Install Date" install_date
Removed: Added: info "Locale" locale  # This only works on glibc systems.
Removed: Added:
Removed: Added: info line_break
Removed: Added: info cols
Removed: Added: info line_break
Removed: Added: }
Removed: Added:
Removed: Added:
Removed: Added: # Kernel
Removed: Added:
Removed: Added:
Removed: Added: # Shorten the output of the kernel function.
Removed: Added: #
Removed: Added: # Default:  'on'
Removed: Added: # Values:   'on', 'off'
Removed: Added: # Flag:     --kernel_shorthand
Removed: Added: # Supports: Everything except *BSDs (except PacBSD and PC-BSD)
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  '4.8.9-1-ARCH'
Removed: Added: # off: 'Linux 4.8.9-1-ARCH'
Removed: Added: kernel_shorthand="on"
Removed: Added:
Removed: Added:
Removed: Added: # Distro
Removed: Added:
Removed: Added:
Removed: Added: # Shorten the output of the distro function
Removed: Added: #
Removed: Added: # Default:  'off'
Removed: Added: # Values:   'on', 'off', 'tiny'
Removed: Added: # Flag:     --distro_shorthand
Removed: Added: # Supports: Everything except Windows and Haiku
Removed: Added: distro_shorthand="off"
Removed: Added:
Removed: Added: # Show/Hide OS Architecture.
Removed: Added: # Show 'x86_64', 'x86' and etc in 'Distro:' output.
Removed: Added: #
Removed: Added: # Default: 'on'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --os_arch
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  'Arch Linux x86_64'
Removed: Added: # off: 'Arch Linux'
Removed: Added: os_arch="on"
Removed: Added:
Removed: Added:
Removed: Added: # Uptime
Removed: Added:
Removed: Added:
Removed: Added: # Shorten the output of the uptime function
Removed: Added: #
Removed: Added: # Default: 'on'
Removed: Added: # Values:  'on', 'off', 'tiny'
Removed: Added: # Flag:    --uptime_shorthand
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:   '2 days, 10 hours, 3 mins'
Removed: Added: # off:  '2 days, 10 hours, 3 minutes'
Removed: Added: # tiny: '2d 10h 3m'
Removed: Added: uptime_shorthand="on"
Removed: Added:
Removed: Added:
Removed: Added: # Shell
Removed: Added:
Removed: Added:
Removed: Added: # Show the path to $SHELL
Removed: Added: #
Removed: Added: # Default: 'off'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --shell_path
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  '/bin/bash'
Removed: Added: # off: 'bash'
Removed: Added: shell_path="off"
Removed: Added:
Removed: Added: # Show $SHELL version
Removed: Added: #
Removed: Added: # Default: 'on'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --shell_version
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  'bash 4.4.5'
Removed: Added: # off: 'bash'
Removed: Added: shell_version="on"
Removed: Added:
Removed: Added:
Removed: Added: # CPU
Removed: Added:
Removed: Added:
Removed: Added: # CPU speed type
Removed: Added: #
Removed: Added: # Default: 'bios_limit'
Removed: Added: # Values: 'scaling_cur_freq', 'scaling_min_freq', 'scaling_max_freq', 'bios_limit'.
Removed: Added: # Flag:    --speed_type
Removed: Added: # Supports: Linux with 'cpufreq'
Removed: Added: # NOTE: Any file in '/sys/devices/system/cpu/cpu0/cpufreq' can be used as a value.
Removed: Added: speed_type="bios_limit"
Removed: Added:
Removed: Added: # CPU speed shorthand
Removed: Added: #
Removed: Added: # Default: 'off'
Removed: Added: # Values: 'on', 'off'.
Removed: Added: # Flag:    --speed_shorthand.
Removed: Added: # NOTE: This flag is not supported in systems with CPU speed less than 1 GHz
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:    'i7-6500U (4) @ 3.1GHz'
Removed: Added: # off:   'i7-6500U (4) @ 3.100GHz'
Removed: Added: speed_shorthand="off"
Removed: Added:
Removed: Added: # Enable/Disable CPU brand in output.
Removed: Added: #
Removed: Added: # Default: 'on'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --cpu_brand
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:   'Intel i7-6500U'
Removed: Added: # off:  'i7-6500U (4)'
Removed: Added: cpu_brand="on"
Removed: Added:
Removed: Added: # CPU Speed
Removed: Added: # Hide/Show CPU speed.
Removed: Added: #
Removed: Added: # Default: 'on'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --cpu_speed
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  'Intel i7-6500U (4) @ 3.1GHz'
Removed: Added: # off: 'Intel i7-6500U (4)'
Removed: Added: cpu_speed="on"
Removed: Added:
Removed: Added: # CPU Cores
Removed: Added: # Display CPU cores in output
Removed: Added: #
Removed: Added: # Default: 'logical'
Removed: Added: # Values:  'logical', 'physical', 'off'
Removed: Added: # Flag:    --cpu_cores
Removed: Added: # Support: 'physical' doesn't work on BSD.
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # logical:  'Intel i7-6500U (4) @ 3.1GHz' (All virtual cores)
Removed: Added: # physical: 'Intel i7-6500U (2) @ 3.1GHz' (All physical cores)
Removed: Added: # off:      'Intel i7-6500U @ 3.1GHz'
Removed: Added: cpu_cores="logical"
Removed: Added:
Removed: Added: # CPU Temperature
Removed: Added: # Hide/Show CPU temperature.
Removed: Added: # Note the temperature is added to the regular CPU function.
Removed: Added: #
Removed: Added: # Default: 'off'
Removed: Added: # Values:  'C', 'F', 'off'
Removed: Added: # Flag:    --cpu_temp
Removed: Added: # Supports: Linux, BSD
Removed: Added: # NOTE: For FreeBSD and NetBSD-based systems, you'll need to enable
Removed: Added: #       coretemp kernel module. This only supports newer Intel processors.
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # C:   'Intel i7-6500U (4) @ 3.1GHz [27.2°C]'
Removed: Added: # F:   'Intel i7-6500U (4) @ 3.1GHz [82.0°F]'
Removed: Added: # off: 'Intel i7-6500U (4) @ 3.1GHz'
Removed: Added: cpu_temp="off"
Removed: Added:
Removed: Added:
Removed: Added: # GPU
Removed: Added:
Removed: Added:
Removed: Added: # Enable/Disable GPU Brand
Removed: Added: #
Removed: Added: # Default: 'on'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --gpu_brand
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  'AMD HD 7950'
Removed: Added: # off: 'HD 7950'
Removed: Added: gpu_brand="on"
Removed: Added:
Removed: Added: # Which GPU to display
Removed: Added: #
Removed: Added: # Default: 'all'
Removed: Added: # Values:  'all', 'dedicated', 'integrated'
Removed: Added: # Flag:    --gpu_type
Removed: Added: # Supports: Linux
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # all:
Removed: Added: #   GPU1: AMD HD 7950
Removed: Added: #   GPU2: Intel Integrated Graphics
Removed: Added: #
Removed: Added: # dedicated:
Removed: Added: #   GPU1: AMD HD 7950
Removed: Added: #
Removed: Added: # integrated:
Removed: Added: #   GPU1: Intel Integrated Graphics
Removed: Added: gpu_type="all"
Removed: Added:
Removed: Added:
Removed: Added: # Resolution
Removed: Added:
Removed: Added:
Removed: Added: # Display refresh rate next to each monitor
Removed: Added: # Default: 'off'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --refresh_rate
Removed: Added: # Supports: Doesn't work on Windows.
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  '1920x1080 @ 60Hz'
Removed: Added: # off: '1920x1080'
Removed: Added: refresh_rate="off"
Removed: Added:
Removed: Added:
Removed: Added: # Gtk Theme / Icons / Font
Removed: Added:
Removed: Added:
Removed: Added: # Shorten output of GTK Theme / Icons / Font
Removed: Added: #
Removed: Added: # Default: 'off'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --gtk_shorthand
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  'Numix, Adwaita'
Removed: Added: # off: 'Numix [GTK2], Adwaita [GTK3]'
Removed: Added: gtk_shorthand="off"
Removed: Added:
Removed: Added:
Removed: Added: # Enable/Disable gtk2 Theme / Icons / Font
Removed: Added: #
Removed: Added: # Default: 'on'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --gtk2
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  'Numix [GTK2], Adwaita [GTK3]'
Removed: Added: # off: 'Adwaita [GTK3]'
Removed: Added: gtk2="on"
Removed: Added:
Removed: Added: # Enable/Disable gtk3 Theme / Icons / Font
Removed: Added: #
Removed: Added: # Default: 'on'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --gtk3
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  'Numix [GTK2], Adwaita [GTK3]'
Removed: Added: # off: 'Numix [GTK2]'
Removed: Added: gtk3="on"
Removed: Added:
Removed: Added:
Removed: Added: # IP Address
Removed: Added:
Removed: Added:
Removed: Added: # Website to ping for the public IP
Removed: Added: #
Removed: Added: # Default: 'http://ident.me'
Removed: Added: # Values:  'url'
Removed: Added: # Flag:    --ip_host
Removed: Added: public_ip_host="http://ident.me"
Removed: Added:
Removed: Added:
Removed: Added: # Disk
Removed: Added:
Removed: Added:
Removed: Added: # Which disks to display.
Removed: Added: # The values can be any /dev/sdXX, mount point or directory.
Removed: Added: # NOTE: By default we only show the disk info for '/'.
Removed: Added: #
Removed: Added: # Default: '/'
Removed: Added: # Values:  '/', '/dev/sdXX', '/path/to/drive'.
Removed: Added: # Flag:    --disk_show
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # disk_show=('/' '/dev/sdb1'):
Removed: Added: #      'Disk (/): 74G / 118G (66%)'
Removed: Added: #      'Disk (/mnt/Videos): 823G / 893G (93%)'
Removed: Added: #
Removed: Added: # disk_show=('/'):
Removed: Added: #      'Disk (/): 74G / 118G (66%)'
Removed: Added: #
Removed: Added: disk_show=('/')
Removed: Added:
Removed: Added: # Disk subtitle.
Removed: Added: # What to append to the Disk subtitle.
Removed: Added: #
Removed: Added: # Default: 'mount'
Removed: Added: # Values:  'mount', 'name', 'dir'
Removed: Added: # Flag:    --disk_subtitle
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # name:   'Disk (/dev/sda1): 74G / 118G (66%)'
Removed: Added: #         'Disk (/dev/sdb2): 74G / 118G (66%)'
Removed: Added: #
Removed: Added: # mount:  'Disk (/): 74G / 118G (66%)'
Removed: Added: #         'Disk (/mnt/Local Disk): 74G / 118G (66%)'
Removed: Added: #         'Disk (/mnt/Videos): 74G / 118G (66%)'
Removed: Added: #
Removed: Added: # dir:    'Disk (/): 74G / 118G (66%)'
Removed: Added: #         'Disk (Local Disk): 74G / 118G (66%)'
Removed: Added: #         'Disk (Videos): 74G / 118G (66%)'
Removed: Added: disk_subtitle="mount"
Removed: Added:
Removed: Added:
Removed: Added: # Song
Removed: Added:
Removed: Added:
Removed: Added: # Manually specify a music player.
Removed: Added: #
Removed: Added: # Default: 'auto'
Removed: Added: # Values:  'auto', 'player-name'
Removed: Added: # Flag:    --music_player
Removed: Added: #
Removed: Added: # Available values for 'player-name':
Removed: Added: #
Removed: Added: # Google Play
Removed: Added: # Spotify
Removed: Added: # amarok
Removed: Added: # audacious
Removed: Added: # banshee
Removed: Added: # bluemindo
Removed: Added: # clementine
Removed: Added: # cmus
Removed: Added: # deadbeef
Removed: Added: # deepin-music
Removed: Added: # elisa
Removed: Added: # exaile
Removed: Added: # gnome-music
Removed: Added: # guayadeque
Removed: Added: # iTunes$
Removed: Added: # juk
Removed: Added: # lollypop
Removed: Added: # mocp
Removed: Added: # mopidy
Removed: Added: # mpd
Removed: Added: # pogo
Removed: Added: # pragha
Removed: Added: # qmmp
Removed: Added: # quodlibet
Removed: Added: # rhythmbox
Removed: Added: # spotify
Removed: Added: # tomahawk
Removed: Added: # xmms2d
Removed: Added: # yarock
Removed: Added: music_player="auto"
Removed: Added:
Removed: Added: # Print the Artist and Title on separate lines
Removed: Added: #
Removed: Added: # Default: 'off'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --song_shorthand
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  'Artist: The Fratellis'
Removed: Added: #      'Song: Chelsea Dagger'
Removed: Added: #
Removed: Added: # off: 'Song: The Fratellis - Chelsea Dagger'
Removed: Added: song_shorthand="off"
Removed: Added:
Removed: Added:
Removed: Added: # Install Date
Removed: Added:
Removed: Added:
Removed: Added: # Whether to show the time in the output
Removed: Added: #
Removed: Added: # Default:  'on'
Removed: Added: # Values:   'on', 'off'
Removed: Added: # Flag:     --install_time
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # on:  'Thu 14 Apr 2016 11:50 PM'
Removed: Added: # off: 'Thu 14 Apr 2016'
Removed: Added: install_time="on"
Removed: Added:
Removed: Added: # Set time format in the output
Removed: Added: #
Removed: Added: # Default: '24h'
Removed: Added: # Values:  '12h', '24h'
Removed: Added: # Flag:    --install_time_format
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # 12h: 'Thu 14 Apr 2016 11:50 PM'
Removed: Added: # 24h: 'Thu 14 Apr 2016 23:50'
Removed: Added: install_time_format="12h"
Removed: Added:
Removed: Added:
Removed: Added: # Text Colors
Removed: Added:
Removed: Added:
Removed: Added: # Text Colors
Removed: Added: #
Removed: Added: # Default:  'distro'
Removed: Added: # Values:   'distro', 'num' 'num' 'num' 'num' 'num' 'num'
Removed: Added: # Flag:     --colors
Removed: Added: #
Removed: Added: # Each number represents a different part of the text in
Removed: Added: # this order: 'title', '@', 'underline', 'subtitle', 'colon', 'info'
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # colors=(distro)      - Text is colored based on Distro colors.
Removed: Added: # colors=(4 6 1 8 8 6) - Text is colored in the order above.
Removed: Added: colors=(distro)
Removed: Added:
Removed: Added:
Removed: Added: # Text Options
Removed: Added:
Removed: Added:
Removed: Added: # Toggle bold text
Removed: Added: #
Removed: Added: # Default:  'on'
Removed: Added: # Values:   'on', 'off'
Removed: Added: # Flag:     --bold
Removed: Added: bold="on"
Removed: Added:
Removed: Added: # Enable/Disable Underline
Removed: Added: #
Removed: Added: # Default:  'on'
Removed: Added: # Values:   'on', 'off'
Removed: Added: # Flag:     --underline
Removed: Added: underline_enabled="on"
Removed: Added:
Removed: Added: # Underline character
Removed: Added: #
Removed: Added: # Default:  '-'
Removed: Added: # Values:   'string'
Removed: Added: # Flag:     --underline_char
Removed: Added: underline_char="-"
Removed: Added:
Removed: Added:
Removed: Added: # Color Blocks
Removed: Added:
Removed: Added:
Removed: Added: # Color block range
Removed: Added: # The range of colors to print.
Removed: Added: #
Removed: Added: # Default:  '0', '7'
Removed: Added: # Values:   'num'
Removed: Added: # Flag:     --block_range
Removed: Added: #
Removed: Added: # Example:
Removed: Added: #
Removed: Added: # Display colors 0-7 in the blocks.  (8 colors)
Removed: Added: # neofetch --block_range 0 7
Removed: Added: #
Removed: Added: # Display colors 0-15 in the blocks. (16 colors)
Removed: Added: # neofetch --block_range 0 15
Removed: Added: block_range=(0 7)
Removed: Added:
Removed: Added: # Toggle color blocks
Removed: Added: #
Removed: Added: # Default:  'on'
Removed: Added: # Values:   'on', 'off'
Removed: Added: # Flag:     --color_blocks
Removed: Added: color_blocks="on"
Removed: Added:
Removed: Added: # Color block width in spaces
Removed: Added: #
Removed: Added: # Default:  '3'
Removed: Added: # Values:   'num'
Removed: Added: # Flag:     --block_width
Removed: Added: block_width=3
Removed: Added:
Removed: Added: # Color block height in lines
Removed: Added: #
Removed: Added: # Default:  '1'
Removed: Added: # Values:   'num'
Removed: Added: # Flag:     --block_height
Removed: Added: block_height=1
Removed: Added:
Removed: Added:
Removed: Added: # Progress Bars
Removed: Added:
Removed: Added:
Removed: Added: # Bar characters
Removed: Added: #
Removed: Added: # Default:  '-', '='
Removed: Added: # Values:   'string', 'string'
Removed: Added: # Flag:     --bar_char
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # neofetch --bar_char 'elapsed' 'total'
Removed: Added: # neofetch --bar_char '-' '='
Removed: Added: bar_char_elapsed="-"
Removed: Added: bar_char_total="="
Removed: Added:
Removed: Added: # Toggle Bar border
Removed: Added: #
Removed: Added: # Default:  'on'
Removed: Added: # Values:   'on', 'off'
Removed: Added: # Flag:     --bar_border
Removed: Added: bar_border="on"
Removed: Added:
Removed: Added: # Progress bar length in spaces
Removed: Added: # Number of chars long to make the progress bars.
Removed: Added: #
Removed: Added: # Default:  '15'
Removed: Added: # Values:   'num'
Removed: Added: # Flag:     --bar_length
Removed: Added: bar_length=15
Removed: Added:
Removed: Added: # Progress bar colors
Removed: Added: # When set to distro, uses your distro's logo colors.
Removed: Added: #
Removed: Added: # Default:  'distro', 'distro'
Removed: Added: # Values:   'distro', 'num'
Removed: Added: # Flag:     --bar_colors
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # neofetch --bar_colors 3 4
Removed: Added: # neofetch --bar_colors distro 5
Removed: Added: bar_color_elapsed="distro"
Removed: Added: bar_color_total="distro"
Removed: Added:
Removed: Added:
Removed: Added: # Info display
Removed: Added: # Display a bar with the info.
Removed: Added: #
Removed: Added: # Default: 'off'
Removed: Added: # Values:  'bar', 'infobar', 'barinfo', 'off'
Removed: Added: # Flags:   --cpu_display
Removed: Added: #          --memory_display
Removed: Added: #          --battery_display
Removed: Added: #          --disk_display
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # bar:     '[---=======]'
Removed: Added: # infobar: 'info [---=======]'
Removed: Added: # barinfo: '[---=======] info'
Removed: Added: # off:     'info'
Removed: Added: cpu_display="off"
Removed: Added: memory_display="off"
Removed: Added: battery_display="off"
Removed: Added: disk_display="off"
Removed: Added:
Removed: Added:
Removed: Added: # Backend Settings
Removed: Added:
Removed: Added:
Removed: Added: # Image backend.
Removed: Added: #
Removed: Added: # Default:  'ascii'
Removed: Added: # Values:   'ascii', 'caca', 'catimg', 'jp2a', 'iterm2', 'off', 'termpix', 'pixterm', 'tycat', 'w3m'
Removed: Added: # Flag:     --backend
Removed: Added: # image_backend="ascii"
Removed: Added: image_backend="off"
Removed: Added:
Removed: Added: # Image Source
Removed: Added: #
Removed: Added: # Which image or ascii file to display.
Removed: Added: #
Removed: Added: # Default:  'auto'
Removed: Added: # Values:   'auto', 'ascii', 'wallpaper', '/path/to/img', '/path/to/ascii', '/path/to/dir/'
Removed: Added: # Flag:     --source
Removed: Added: #
Removed: Added: # NOTE: 'auto' will pick the best image source for whatever image backend is used.
Removed: Added: #       In ascii mode, distro ascii art will be used and in an image mode, your
Removed: Added: #       wallpaper will be used.
Removed: Added: image_source="auto"
Removed: Added:
Removed: Added:
Removed: Added: # Ascii Options
Removed: Added:
Removed: Added:
Removed: Added: # Ascii distro
Removed: Added: # Which distro's ascii art to display.
Removed: Added: #
Removed: Added: # Default: 'auto'
Removed: Added: # Values:  'auto', 'distro_name'
Removed: Added: # Flag:    --ascii_distro
Removed: Added: #
Removed: Added: # NOTE: Arch and Ubuntu have 'old' logo variants.
Removed: Added: #       Change this to 'arch_old' or 'ubuntu_old' to use the old logos.
Removed: Added: # NOTE: Ubuntu has flavor variants.
Removed: Added: #       Change this to 'Lubuntu', 'Xubuntu', 'Ubuntu-GNOME' or 'Ubuntu-Budgie' to use the flavors.
Removed: Added: # NOTE: Arch, Crux and Gentoo have a smaller logo variant.
Removed: Added: #       Change this to 'arch_small', 'crux_small' or 'gentoo_small' to use the small logos.
Removed: Added: ascii_distro="auto"
Removed: Added:
Removed: Added: # Ascii Colors
Removed: Added: #
Removed: Added: # Default:  'distro'
Removed: Added: # Values:   'distro', 'num' 'num' 'num' 'num' 'num' 'num'
Removed: Added: # Flag:     --ascii_colors
Removed: Added: #
Removed: Added: # Example:
Removed: Added: # ascii_colors=(distro)      - Ascii is colored based on Distro colors.
Removed: Added: # ascii_colors=(4 6 1 8 8 6) - Ascii is colored using these colors.
Removed: Added: ascii_colors=(distro)
Removed: Added:
Removed: Added: # Bold ascii logo
Removed: Added: # Whether or not to bold the ascii logo.
Removed: Added: #
Removed: Added: # Default: 'on'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flag:    --ascii_bold
Removed: Added: ascii_bold="on"
Removed: Added:
Removed: Added:
Removed: Added: # Image Options
Removed: Added:
Removed: Added:
Removed: Added: # Image loop
Removed: Added: # Setting this to on will make neofetch redraw the image constantly until
Removed: Added: # Ctrl+C is pressed. This fixes display issues in some terminal emulators.
Removed: Added: #
Removed: Added: # Default:  'off'
Removed: Added: # Values:   'on', 'off'
Removed: Added: # Flag:     --loop
Removed: Added: image_loop="off"
Removed: Added:
Removed: Added: # Thumbnail directory
Removed: Added: #
Removed: Added: # Default: '~/.cache/thumbnails/neofetch'
Removed: Added: # Values:  'dir'
Removed: Added: thumbnail_dir="${XDG_CACHE_HOME:-${HOME}/.cache}/thumbnails/neofetch"
Removed: Added:
Removed: Added: # Crop mode
Removed: Added: #
Removed: Added: # Default:  'normal'
Removed: Added: # Values:   'normal', 'fit', 'fill'
Removed: Added: # Flag:     --crop_mode
Removed: Added: #
Removed: Added: # See this wiki page to learn about the fit and fill options.
Removed: Added: # https://github.com/dylanaraps/neofetch/wiki/What-is-Waifu-Crop%3F
Removed: Added: crop_mode="normal"
Removed: Added:
Removed: Added: # Crop offset
Removed: Added: # Note: Only affects 'normal' crop mode.
Removed: Added: #
Removed: Added: # Default:  'center'
Removed: Added: # Values:   'northwest', 'north', 'northeast', 'west', 'center'
Removed: Added: #           'east', 'southwest', 'south', 'southeast'
Removed: Added: # Flag:     --crop_offset
Removed: Added: crop_offset="center"
Removed: Added:
Removed: Added: # Image size
Removed: Added: # The image is half the terminal width by default.
Removed: Added: #
Removed: Added: # Default: 'auto'
Removed: Added: # Values:  'auto', '00px', '00%', 'none'
Removed: Added: # Flags:   --image_size
Removed: Added: #          --size
Removed: Added: image_size="auto"
Removed: Added:
Removed: Added: # Gap between image and text
Removed: Added: #
Removed: Added: # Default: '3'
Removed: Added: # Values:  'num', '-num'
Removed: Added: # Flag:    --gap
Removed: Added: gap=3
Removed: Added:
Removed: Added: # Image offsets
Removed: Added: # Only works with the w3m backend.
Removed: Added: #
Removed: Added: # Default: '0'
Removed: Added: # Values:  'px'
Removed: Added: # Flags:   --xoffset
Removed: Added: #          --yoffset
Removed: Added: yoffset=0
Removed: Added: xoffset=0
Removed: Added:
Removed: Added: # Image background color
Removed: Added: # Only works with the w3m backend.
Removed: Added: #
Removed: Added: # Default: ''
Removed: Added: # Values:  'color', 'blue'
Removed: Added: # Flag:    --bg_color
Removed: Added: background_color=
Removed: Added:
Removed: Added:
Removed: Added: # Scrot Options
Removed: Added:
Removed: Added:
Removed: Added: # Whether or not to always take a screenshot
Removed: Added: # You can manually take a screenshot with "--scrot" or "-s"
Removed: Added: #
Removed: Added: # Default: 'off'
Removed: Added: # Values:  'on', 'off'
Removed: Added: # Flags:   --scrot
Removed: Added: #          -s
Removed: Added: scrot="off"
Removed: Added:
Removed: Added: # Screenshot Program
Removed: Added: # Neofetch will automatically use whatever screenshot tool
Removed: Added: # is installed on your system.
Removed: Added: #
Removed: Added: # If 'neofetch -v' says that it couldn't find a screenshot
Removed: Added: # tool or you're using a custom tool then you can change
Removed: Added: # the option below to a custom command.
Removed: Added: #
Removed: Added: # Default: 'auto'
Removed: Added: # Values:  'auto' 'cmd -flags'
Removed: Added: # Flag:    --scrot_cmd
Removed: Added: scrot_cmd="auto"
Removed: Added:
Removed: Added: # Screenshot Filename
Removed: Added: # What to name the screenshots
Removed: Added: #
Removed: Added: # Default: 'neofetch-$(date +%F-%I-%M-%S-${RANDOM}).png'
Removed: Added: # Values:  'string'
Removed: Added: # Flag:    --scrot_name
Removed: Added: scrot_name="neofetch-$(date +%F-%I-%M-%S-${RANDOM}).png"
Removed: Added:
Removed: Added: # Image upload host
Removed: Added: # Where to upload the image.
Removed: Added: #
Removed: Added: # Default: 'teknik'
Removed: Added: # Values:  'imgur', 'teknik'
Removed: Added: # Flag:    --image_host
Removed: Added: #
Removed: Added: # NOTE: If you'd like another image host to be added to Neofetch.
Removed: Added: #       Open an issue on github.
Removed: Added: image_host="teknik"
Removed: Added:
Removed: Added:
Removed: Added: # Misc Options
Removed: Added:
Removed: Added: # Stdout mode
Removed: Added: # Turn off all colors and disables image backend (ASCII/Image).
Removed: Added: # Useful for piping into another command.
Removed: Added: # Default: 'off'
Removed: Added: # Values: 'on', 'off'
Removed: Added: stdout="off"
Removed: Added:
Removed: Added: # Config version.
Removed: Added: #
Removed: Added: # NOTE: Don't change this value, neofetch reads this to determine
Removed: Added: # how to handle backwards compatibility.
Removed: Added: config_version="3.4.0"
Removed: Added: #!/usr/bin/env python3
Removed: Added: # -*- coding: utf-8 -*-
Removed: Added:
Removed: Added: # If you use GitHub, you need to claim
Removed: Added: # Personal access tokens (classic) if you dont ofc
Removed: Added:
Removed: Removed: config = load_config()
Removed: Added: os.chdir(os.path.dirname(os.path.realpath(__file__))) # Change directory to the script path
Removed: Added: config = load_config() # Load configuration from config.json
Removed: Added: # os.chdir(config['repo_path']) # Change directory to the repo path
Removed: Removed: run_command(f'cp {file_path} {dest_path}')
Removed: Added: run_command(f'cp -r {file_path} {dest_path}')
Removed: Removed: os.chdir(config['repo_path']) # Change directory to the repo path
