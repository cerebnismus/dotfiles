### Getting Started

```bash
crontab -e
@reboot /usr/bin/python3 /home/cerebnismus/dotfiles/sync_dotfiles.py
```


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

