### Getting Started

```bash
crontab -e
@reboot /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py
```


## Update: 2024-04-16 20:18:31
diff --git a/.README.md.un~ b/.README.md.un~
index b33e29f..8878a20 100644
Binary files a/.README.md.un~ and b/.README.md.un~ differ
diff --git a/sync_dotfiles.py b/sync_dotfiles.py
index de2317b..ef3f869 100644
--- a/sync_dotfiles.py
+++ b/sync_dotfiles.py
@@ -79,7 +79,10 @@ def main():
         dest_path = os.path.join(config['repo_path'], os.path.basename(file_path))
         if os.path.isdir(file_path):
             print(f"Copying directory: {file_path}")
-            run_command(f'cp -r {file_path} {dest_path}')
+            try:
+                run_command(f'cp -r {file_path} {dest_path}')
+            except:
+                pass
         else:
             print(f"Copying file: {file_path}")
             run_command(f'cp {file_path} {dest_path}')



