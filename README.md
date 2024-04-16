### Getting Started

```bash
crontab -e
@reboot /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py
```


## Update: 2024-04-16 19:56:36
```Removed: diff
summary.append(f'diff\nAdded: ```{line[1:].strip()}\n```')
```
Added:``` diff
summary.append(f'Added:``` diff\n{line[1:].strip()}\n```')
```
```Removed: diff
summary.append(f'diff\nRemoved: ```{line[1:].strip()}\n```')
```
Added:``` diff
summary.append(f'```Removed: diff\n{line[1:].strip()}\n```')
```

## Update: 2024-04-16 19:54:38
diff
Removed: ```summary.append(f'```diff\nAdded: {line[1:].strip()}\n```')
```
diff
Added: ```summary.append(f'diff\nAdded: ```{line[1:].strip()}\n```')
```
diff
Removed: ```summary.append(f'```diff\nRemoved: {line[1:].strip()}\n```')
```
diff
Added: ```summary.append(f'diff\nRemoved: ```{line[1:].strip()}\n```')
```

## Update: 2024-04-16 19:28:19
```diff
Removed: minimum_size = '360 500',
```
```diff
Added: minimum_size = '1200 1920',
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

