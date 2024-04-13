#### Getting Started


## Update: 2024-04-13 23:07:17
Removed: run_command(f'cp -r {file_path} {dest_path}')
Added: if os.path.isdir(file_path):
Added: run_command(f'cp -r {file_path} {dest_path}')
Added: else:
Added: run_command(f'cp {file_path} {dest_path}')
