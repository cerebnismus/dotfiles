### Getting Started

```bash
crontab -e
@reboot /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py
```


## Update: 2024-04-16 20:23:09
diff --git a/sync_dotfiles.py b/sync_dotfiles.py
index ef3f869..186e75e 100644
--- a/sync_dotfiles.py
+++ b/sync_dotfiles.py
@@ -37,6 +37,30 @@ def generate_summary(changes):
     return '\n'.join(summary)
 """
 
<span style="color:green;">+def colorize_diff(diff_text):</span>
<span style="color:green;">+    """</span>
<span style="color:green;">+    Generates a Markdown-friendly version of a diff output, with added lines in green</span>
<span style="color:green;">+    and removed lines in red.</span>
<span style="color:green;">+    </span>
<span style="color:green;">+    :param diff_text: str - The raw diff string.</span>
<span style="color:green;">+    :return: str - A string formatted with Markdown and HTML for colored display.</span>
<span style="color:green;">+    """</span>
<span style="color:green;">+    lines = diff_text.split('\n')</span>
<span style="color:green;">+    colorized_lines = []</span>
<span style="color:green;">+    </span>
<span style="color:green;">+    for line in lines:</span>
<span style="color:green;">+        if line.startswith('+') and not line.startswith('+++'):</span>
<span style="color:green;">+            # Wrap added lines in a green span</span>
<span style="color:green;">+            colorized_line = f'<span style="color:green;">{line}</span>'</span>
<span style="color:green;">+        elif line.startswith('-') and not line.startswith('---'):</span>
<span style="color:green;">+            # Wrap removed lines in a red span</span>
<span style="color:green;">+            colorized_line = f'<span style="color:red;">{line}</span>'</span>
<span style="color:green;">+        else:</span>
<span style="color:green;">+            colorized_line = line</span>
<span style="color:green;">+        colorized_lines.append(colorized_line)</span>
<span style="color:green;">+    </span>
<span style="color:green;">+    return '\n'.join(colorized_lines)</span>
<span style="color:green;">+</span>
 
 def update_readme(changes, config):
     """Updates README.md by inserting a formatted summary of the changes at the nth line."""
@@ -50,6 +74,7 @@ def update_readme(changes, config):
 
         # Define the update content with a timestamp
         # update_content = f"\n## Update: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n{readable_changes}\n"
<span style="color:green;">+        changes = colorize_diff(changes)</span>
         update_content = f"\n## Update: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n{changes}\n"
 
         # Insert the update content after the second line (index 1)


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



