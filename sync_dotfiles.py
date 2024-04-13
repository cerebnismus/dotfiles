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
            summary.append(f'```diff\nAdded: {line[1:].strip()}\n```')
        elif line.startswith('-') and not line.startswith('---'):
            summary.append(f'```diff\nRemoved: {line[1:].strip()}\n```')
    return '\n'.join(summary)

import datetime

def update_readme(changes, config):
    """Updates README.md by inserting a formatted summary of the changes at the nth line."""
    if changes:
        readable_changes = generate_summary(changes)
        readme_path = os.path.join(config['repo_path'], 'README.md')

        # Read the existing content of the README.md file
        with open(readme_path, 'r', encoding='utf-8') as file:
            lines = file.readlines()

        # Define the update content with a timestamp
        update_content = f"\n## Update: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n{readable_changes}\n"

        # Insert the update content after the second line (index 1)
        if len(lines) > 1:
            lines.insert(7, update_content)
        else:
            # If the file has less than 2 lines, just append the content
            lines.append(update_content)

        # Write the modified content back to the README.md file
        with open(readme_path, 'w', encoding='utf-8') as file:
            file.writelines(lines)


def main():
    """
    Load configuration, change directory to the repo path, stage all files,
    check for differences, and if changes are detected, update README and commit changes.
    """

    commit_message = 'Updated by sync_dotfiles.py'

    os.chdir(os.path.dirname(os.path.realpath(__file__))) # Change directory to the script path
    config = load_config() # Load configuration from config.json

    for file_path in config['files_to_track']: # Copy files to the repo directory if necessary
        dest_path = os.path.join(config['repo_path'], os.path.basename(file_path))
        if os.path.isdir(file_path):
            print(f"Copying directory: {file_path}")
            run_command(f'cp -r {file_path} {dest_path}')
        else:
            print(f"Copying file: {file_path}")
            run_command(f'cp {file_path} {dest_path}')

    run_command('git add .') # Stage all files initially to compare changes later
    changes = run_command("git diff --cached ':(exclude)README.md'")  # Check for differences
    if changes:
        print("Changes detected.")
        print(changes)
        update_readme(changes, config)
    else:
        print("No changes detected.")

    run_command('git add .') # Add all changes including the README.md
    run_command(f'git commit -m "{commit_message}" --no-verify') # Temporarily bypass pre-c
    run_command('git push origin master') # Push changes

if __name__ == "__main__":
    main()
