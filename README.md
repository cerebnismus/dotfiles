### Getting Started

```bash
crontab -e
@reboot /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py
```


## Update: 2024-04-16 20:32:18
::: warningdiff --git a/sync_dotfiles.py b/sync_dotfiles.py
index bd7ee12..6fd6922 100644
--- a/sync_dotfiles.py
+++ b/sync_dotfiles.py
@@ -37,30 +37,6 @@ def generate_summary(changes):
     return '\n'.join(summary)
 """
 
-def colorize_diff(diff_text):
-    """
-    Generates a Markdown-friendly version of a diff output, with added lines in green
-    and removed lines in red.
-    
-    :param diff_text: str - The raw diff string.
-    :return: str - A string formatted with Markdown and HTML for colored display.
-    """
-    lines = diff_text.split('\n')
-    colorized_lines = []
-    
-    for line in lines:
-        if line.startswith('+') and not line.startswith('+++'):
-            # Wrap added lines in a green span
-            colorized_line = f'<span style="color:green;">${line}</span>'
-        elif line.startswith('-') and not line.startswith('---'):
-            # Wrap removed lines in a red span
-            colorized_line = f'<span style="color:red;">${line}</span>'
-        else:
-            colorized_line = line
-        colorized_lines.append(colorized_line)
-    
-    return '\n'.join(colorized_lines)
-
 
 def update_readme(changes, config):
     """Updates README.md by inserting a formatted summary of the changes at the nth line."""
@@ -74,8 +50,7 @@ def update_readme(changes, config):
 
         # Define the update content with a timestamp
         # update_content = f"\n## Update: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n{readable_changes}\n"
-        changes = colorize_diff(changes)
-        update_content = f"\n## Update: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n{changes}\n"
+        update_content = f"\n## Update: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n::: warning{changes}:::\n"
 
         # Insert the update content after the second line (index 1)
         if len(lines) > 1:
@@ -110,7 +85,10 @@ def main():
                 pass
         else:
             print(f"Copying file: {file_path}")
-            run_command(f'cp {file_path} {dest_path}')
+            try:
+                run_command(f'cp {file_path} {dest_path}')
+            except:
+                pass
 
     run_command('git add .') # Stage all files initially to compare changes later
     changes = run_command("git diff --cached ':(exclude)README.md'")  # Check for differences
:::

## Update: 2024-04-16 20:25:33
diff --git a/.README.md.un~ b/.README.md.un~
index 8878a20..f57e3c0 100644
Binary files a/.README.md.un~ and b/.README.md.un~ differ
diff --git a/sync_dotfiles.py b/sync_dotfiles.py
index 186e75e..bd7ee12 100644
--- a/sync_dotfiles.py
+++ b/sync_dotfiles.py
@@ -51,10 +51,10 @@ def colorize_diff(diff_text):
     for line in lines:
         if line.startswith('+') and not line.startswith('+++'):
             # Wrap added lines in a green span
<span style="color:red;">$-            colorized_line = f'<span style="color:green;">{line}</span>'</span>
<span style="color:green;">$+            colorized_line = f'<span style="color:green;">${line}</span>'</span>
         elif line.startswith('-') and not line.startswith('---'):
             # Wrap removed lines in a red span
<span style="color:red;">$-            colorized_line = f'<span style="color:red;">{line}</span>'</span>
<span style="color:green;">$+            colorized_line = f'<span style="color:red;">${line}</span>'</span>
         else:
             colorized_line = line
         colorized_lines.append(colorized_line)


## Update: 2024-04-16 20:23:09

