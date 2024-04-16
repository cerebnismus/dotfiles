### Getting Started

```bash
crontab -e
@reboot /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py
```


## Update: 2024-04-16 20:12:12
diff --git a/.nvimrc b/.nvimrc
new file mode 100644
index 0000000..61792a0
--- /dev/null
+++ b/.nvimrc
@@ -0,0 +1,31 @@
+" cerebnismus's dotfiles v.1.2
+
+" CoPilot in VIM
+" git clone https://github.com/github/copilot.vim.git \
+"  ~/.vim/pack/github/start/copilot.vim
+
+" colorscheme desert
+
+" when delete not work
+set backspace=indent,eol,start
+
+syntax enable
+
+set number
+set smartindent
+set tabstop=4
+set shiftwidth=4
+set expandtab
+
+set showmatch
+set wrap
+set mouse=a
+set incsearch
+set ignorecase
+set smartcase
+set ruler
+set clipboard=unnamedplus
+set path+=**
+set undofile
+set wildmenu
+
diff --git a/config.json b/config.json
index 8ae9606..404814f 100644
--- a/config.json
+++ b/config.json
@@ -13,6 +13,7 @@
                         "/home/cerebnismus/.conkyrc",
                         "/home/cerebnismus/.profile",
                         "/home/cerebnismus/.selected_editor",
+                        "/home/cerebnismus/.config/nvim/",
                         "/home/cerebnismus/.vimrc"
                     ]
 }
diff --git a/nvim/init.vim b/nvim/init.vim
new file mode 100644
index 0000000..e7308d9
--- /dev/null
+++ b/nvim/init.vim
@@ -0,0 +1 @@
+source ~/.nvimrc
diff --git a/nvim/pack/github/start/copilot.vim b/nvim/pack/github/start/copilot.vim
new file mode 160000
index 0000000..7097b09
--- /dev/null
+++ b/nvim/pack/github/start/copilot.vim
@@ -0,0 +1 @@
+Subproject commit 7097b09e52621a97d11f254e04de5e5a0f26e5f5
diff --git a/sync_dotfiles.py b/sync_dotfiles.py
index e858b02..de2317b 100644
--- a/sync_dotfiles.py
+++ b/sync_dotfiles.py
@@ -4,10 +4,7 @@
 # If you use GitHub, you need to claim
 # Personal access tokens (classic) if you dont ofc
 
-import subprocess
-import os
-import datetime
-import json
+import subprocess, os, json, datetime
 
 def load_config():
     """Load configuration from a JSON file."""
@@ -28,8 +25,8 @@ def run_command(command):
         print("Error:", result.stderr)
     return result.stdout
 
+"""
 def generate_summary(changes):
-    """Generates a more readable summary of changes for the README.md."""
     lines = changes.split('\n')
     summary = []
     for line in lines:
@@ -38,13 +35,13 @@ def generate_summary(changes):
         elif line.startswith('-') and not line.startswith('---'):
             summary.append(f'diff\nRemoved:```{line[1:].strip()}\n```')
     return '\n'.join(summary)
+"""
 
-import datetime
 
 def update_readme(changes, config):
     """Updates README.md by inserting a formatted summary of the changes at the nth line."""
     if changes:
-        readable_changes = generate_summary(changes)
+        # readable_changes = generate_summary(changes)
         readme_path = os.path.join(config['repo_path'], 'README.md')
 
         # Read the existing content of the README.md file
@@ -52,7 +49,8 @@ def update_readme(changes, config):
             lines = file.readlines()
 
         # Define the update content with a timestamp
-        update_content = f"\n## Update: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n{readable_changes}\n"
+        # update_content = f"\n## Update: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n{readable_changes}\n"
+        update_content = f"\n## Update: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n{changes}\n"
 
         # Insert the update content after the second line (index 1)
         if len(lines) > 1:


## Update: 2024-04-16 19:58:28
diff
Removed:```summary.append(f'Added:``` diff\n{line[1:].strip()}\n```')
```
diff
Added:```summary.append(f'diff\nAdded:```{line[1:].strip()}\n```')
```
diff
Removed:```summary.append(f'```Removed: diff\n{line[1:].strip()}\n```')
```
diff
Added:```summary.append(f'diff\nRemoved:```{line[1:].strip()}\n```')
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

