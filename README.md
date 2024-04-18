### Getting Started

```bash
crontab -e
@reboot /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py
```


## Update: 2024-04-18 20:29:26
```
diff --git a/.vimrc b/.vimrc
index d150d62..5908581 100644
--- a/.vimrc
+++ b/.vimrc
@@ -1,11 +1,7 @@
-" cerebnismus's dotfiles v.1.2
-
 " CoPilot in VIM
 " git clone https://github.com/github/copilot.vim.git \
 "  ~/.vim/pack/github/start/copilot.vim
 
-" colorscheme desert
-
 " when delete not work
 set backspace=indent,eol,start
 

```

## Update: 2024-04-17 17:16:07
```
diff --git a/.bashrc b/.bashrc
index 17cfe27..83a0185 100644
--- a/.bashrc
+++ b/.bashrc
@@ -116,7 +116,7 @@ if ! shopt -oq posix; then
   fi
 fi
 
-neofetch
+
 
 
 export NVM_DIR="$HOME/.nvm"
diff --git a/.profile b/.profile
index 1460ab2..d642c19 100644
--- a/.profile
+++ b/.profile
@@ -31,7 +31,9 @@ TZ='Europe/Istanbul'; export TZ
 xset s off
 xset -dpms
 xrandr --output eDP-1 --off
-conky -d -c ~/.conkyrc
-#xrandr --auto && xrandr --output eDP-1 --off
-#volumeicon
+
+# conky -d -c ~/.conkyrc
+# xrandr --auto && xrandr --output eDP-1 --off
+# volumeicon
+
 /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py

```

## Update: 2024-04-17 05:11:00
```
diff --git a/.bashrc b/.bashrc
index fc727d4..17cfe27 100644
--- a/.bashrc
+++ b/.bashrc
@@ -122,3 +122,6 @@ neofetch
 export NVM_DIR="$HOME/.nvm"
 [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
 [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
+
+
+PATH="$PATH:~/.local/bin"

```

## Update: 2024-04-16 20:41:25
```
diff --git a/.README.md.un~ b/.README.md.un~
index f57e3c0..ea5c722 100644
Binary files a/.README.md.un~ and b/.README.md.un~ differ

```

## Update: 2024-04-16 20:40:46
```
diff --git a/sync_dotfiles.py b/sync_dotfiles.py
index d2f498d..9e7abe4 100644
--- a/sync_dotfiles.py
+++ b/sync_dotfiles.py
@@ -47,7 +47,7 @@ def generate_summary(changes):
     cleaned_changes = changes.replace("", "").replace('', '')
     
     # Wrap the cleaned changes in triple quotes
-    return f'\n{cleaned_changes}\n'
+    return f'\n{cleaned_changes}\n'
 
 
 

```

Badges Tutorial Completed
