### Getting Started

```bash
crontab -e
@reboot /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py
```


## Update: 2024-04-16 19:28:19
```diff
Removed: minimum_size = '360 500',
```
```diff
Added: minimum_size = '1200 1920',
```
```diff
Removed: gap_y = 98,
```
```diff
Added: gap_y = 90,
```
```diff
Removed: ${color4}${font ConkySymbols:size=14}a${font} S Y S T E M » $hr ${color}
```
```diff
Added: ${color4}${font ConkySymbols:size=14}a${font} SYSTEM INFO » $hr ${color}
```
```diff
Removed: ${color4}${font ConkySymbols:size=14}f${font} C P U  &  G P U  &  M E M O R Y » $hr${color}
```
```diff
Added: ${color4}${font ConkySymbols:size=14}f${font} CPU & GPU & MEMORY » $hr${color}
```
```diff
Removed: ${color4}${font ConkySymbols:size=14}b${font} N E T W O R K » $hr${color}
```
```diff
Added: ${color4}${font ConkySymbols:size=14}b${font} NETWORK » $hr${color}
```
```diff
Removed: ${color4}${font ConkySymbols:size=14}k${font} S T O R A G E » $hr${color}
```
```diff
Added: ${color4}${font ConkySymbols:size=14}k${font} STORAGE » $hr${color}
```
```diff
Removed: ${color4}${font ConkySymbols:size=14}n${font} P R O C E S S E S » $hr${color}
```
```diff
Added: ${color4}${font ConkySymbols:size=14}n${font} PROCESSES » $hr${color}
```
```diff
Added: ${goto 10}${color1}${top name 5}${color6}${font}${goto 140}${top pid 5}${goto 225}${top cpu 6}${goto 295}${top mem_res 6}
```
```diff
Added: ${goto 10}${color1}${top name 5}${color6}${font}${goto 140}${top pid 5}${goto 225}${top cpu 7}${goto 295}${top mem_res 7}
```
```diff
Added: ${goto 10}${color1}${top name 5}${color6}${font}${goto 140}${top pid 5}${goto 225}${top cpu 8}${goto 295}${top mem_res 8}
```

## Update: 2024-04-16 19:07:36
```diff
Added: 
```
```diff
Added: export NVM_DIR="$HOME/.nvm"
```
```diff
Added: [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
```
```diff
Added: [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

## Update: 2024-04-14 06:44:31
```diff
Removed: neofetch
```
```diff
Added: neofetch
```
```diff
Added: 
```
```diff
Added: /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py
```

## Update: 2024-04-14 01:34:26
```diff
Removed: run_command(f'git commit -m "{commit_message}" --no-verify') # Temporarily bypass pre-commit hooks
```
```diff
Added: run_command(f'git commit -m "{commit_message}" --no-verify') # Temporarily bypass pre-c
```

## Update: 2024-04-14 00:10:20
```diff
Removed: run_command(f'git commit -m "{commit_message}"')
```
```diff
Removed: run_command(f'git commit -m "{commit_message}"')
```
```diff
Added: run_command(f'git commit -m "{commit_message}" --no-verify') # Temporarily bypass pre-commit hooks
```

## Update: 2024-04-13 23:13:05
Removed: "/home/cerebnismus/.selected_editor",
Removed: "/home/cerebnismus/README.md"
Added: "/home/cerebnismus/.selected_editor"
Removed: commit_message = 'Update configuration files by sync_dotfiles.py'
Added: commit_message = 'Updated by sync_dotfiles.py'

## Update: 2024-04-13 23:15:02
Added: print(f"Copying directory: {file_path}")
Added: print(f"Copying file: {file_path}")

## Update: 2024-04-13 23:15:43
Removed: " cerebnismus's dotfiles
Added: " cerebnismus's dotfiles v.1.2
Removed: "/home/cerebnismus/.selected_editor"
Added: "/home/cerebnismus/.selected_editor",
Added: "/home/cerebnismus/.vimrc"
