### Getting Started

```bash
crontab -e
@reboot /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py
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
