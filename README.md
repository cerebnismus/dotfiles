### Getting Started

```bash
crontab -e
@reboot /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py
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
