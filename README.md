# startup_scripts
Automated scripts to open applications based on what you're doing on login

## 🔰 Setup

- Replace `base_path` variable in `profile_selector.py` file with the path of the folder we store profiles. 
- add the applications you want to start in different profiles in the `profiles` folder in the corresponding named scripts.
  - You can also add new scripts.
- run `sh startup_profile_selector.sh`
### 👉 To automatically run at startup

- Different linux distros use different methods to auto start apps/scripts on startup. Some methods to try:
  - **Option 1**
    - edit `startup_scripts_cron_file` file and change the `startup.sh` script path to the one on your system
    - copy the `startup_scripts_cron_file` file to `/etc/cron.d/` folder
  - **Option 2** (If you use KDE)
    - make startup_profile_selector.sh executable using `chmod +x startup_profile_selector.sh`
    - Open 'system settings' > 'startup and shutdown' > 'Add' > 'Add login script' > add startup_profile_selector.sh
  - **Option 3**
    - Do your own research

## Trivia
- `xdotool` is a desktop automation tool
  - Read [here](https://hackernoon.com/how-to-automate-your-linux-desktop)
- To open konsole(KDE terminal) and run a script:
  - `konsole -e "python file.py"`
    - Note: add a `input()` at the end of the script to pause the script. Else it'll execute and close immediately.
- To make a script execute & run it:
    ```bash
    chmod +x startup_scripts.sh
    ./startup_scripts.sh 
    ```
    OR just use `sh startup_scripts.sh`
- Cron - schedule tasks on linux
  - Read [here](https://www.hostinger.in/tutorials/cron-job)
  - Help in creating cron jobs - see [link](https://crontab.guru/#)