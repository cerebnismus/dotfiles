#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# If you use GitHub, you need to claim
# Personal access tokens (classic) if you dont ofc

import subprocess
import os
import datetime
import json

def load_config():
    """Load configuration from a JSON file."""
    with open('config.json', 'r', encoding='utf-8') as config_file:
        return json.load(config_file)

def run_command(command):
    """Executes a shell command and returns the output, handles both stdout and stderr."""
    result = subprocess.run(
        command,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        shell=True,
        text=True,
        check=True
    )
    if result.stderr:
        print("Error:", result.stderr)
    return result.stdout

def generate_summary(changes):
    """Generates a more readable summary of changes for the README.md."""
    lines = changes.split('\n')
    summary = []
    for line in lines:
        if line.startswith('+') and not line.startswith('+++'):
            summary.append(f'Added: {line[1:].strip()}')
        elif line.startswith('-') and not line.startswith('---'):
            summary.append(f'Removed: {line[1:].strip()}')
    return '\n'.join(summary)

def update_readme(changes, config):
    """Updates README.md with a formatted summary of the changes."""
    if changes:
        readable_changes = generate_summary(changes)
        readme_path = os.path.join(config['repo_path'], 'README.md')
        with open(readme_path, 'a', encoding='utf-8') as file:
            file.write(f"\n## Update: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
            file.write(readable_changes + '\n')

def main():
    """
    Load configuration, change directory to the repo path, stage all files,
    check for differences, and if changes are detected, update README and commit changes.
    """
    os.chdir(os.path.dirname(os.path.realpath(__file__))) # Change directory to the script path
    config = load_config() # Load configuration from config.json
    # os.chdir(config['repo_path']) # Change directory to the repo path

    for file_path in config['files_to_track']: # Copy files to the repo directory if necessary
        dest_path = os.path.join(config['repo_path'], os.path.basename(file_path))
        if os.path.isdir(file_path):
            run_command(f'cp -r {file_path} {dest_path}')
        else:
            run_command(f'cp {file_path} {dest_path}')

    run_command('git add .') # Stage all files initially to compare changes later
    changes = run_command("git diff --cached ':(exclude)README.md'")  # Check for differences
    if changes:
        print("Changes detected, updating README and committing changes...")
        update_readme(changes, config)
        run_command('git add .') # Add all changes including the README.md
        commit_message = 'Updated by sync_dotfiles.py'
        run_command(f'git commit -m "{commit_message}"')
        run_command('git push origin master') # Push changes
    else:
        print("No changes detected, no action taken.")

if __name__ == "__main__":
    main()
