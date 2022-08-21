# startup_scripts
automated scripts to open differing applications based on what you're doing

```bash
chmod +x startup_scripts.sh
./startup_scripts.sh
```


- Open konsole and run a script:
  - `konsole -e "python file.py"`
    - Note: add a `input()` at the end of the script to pause the script. Else it'll execute and close immediately.
- Replace `base_path` variable in `startup_scripts.py` file with the path of the folder we store profiles. 
- run `startup_scripts.py` file