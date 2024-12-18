# Wi-Fi Password Finder Script

Retrieves the stored passwords of all Wi-Fi networks on a Windows computer. 
It uses the `netsh` command to list saved Wi-Fi profiles and extracts the corresponding passwords, if available.

On any Windows computer with admin privileges, you can check the full profile of any stored Wi-Fi network using :
`netsh wlan show profile <wifi-name> key=clear`
Note : This only works for networks stored on your computer, it will not "hack" into other networks, only revealing information you already should know. 

Helpful if you forgot your saved wifi passwords / want to login on other devices

Includes : Python script and Bash script that both perform the same task

## Features

- Lists all saved Wi-Fi profiles on a Windows machine.
- Retrieves the password (key content) for each profile, if available.
- Displays the profiles and passwords in a tabular format.
- Handles encoding errors and missing passwords gracefully.

## Requirements

- **Operating System**: Windows
- **One of** :
   - **Python**: Python 3.x (Recommended)
   - **Bash Compatible CLI**: Git Bash (Recommended)
- **Privileges**: Administrator privileges (required to access Wi-Fi profiles, or modify perms to run .sh file for the first time)

## How It Works

1. **Retrieve Wi-Fi Profiles**:
   - The script runs the `netsh wlan show profiles` command to list all saved Wi-Fi profiles on the computer.
2. **Extract Passwords**:
   - For each profile, it runs `netsh wlan show profile <profile_name> key=clear` to extract the password.
3. **Display Results**:
   - The script formats and displays the profile names along with their corresponding passwords in a table.

## Usage

### Python Script :
1. **Clone or Download the Script**:
   - Save the script as whatever you want. For example : `wifi_password_finder.py`.

2. **Run the Script**:
   - Open a Command Prompt or terminal with administrator privileges.
   - Run the script:
     ```bash
     python wifi_password_finder.py
     ```

3. **View the Output**:
   - The script will display a list of Wi-Fi profiles and their corresponding passwords, if available.

   Example Output:
   ```
   Home_Network                  | password123
   Office_WiFi                   | office12345
   Public_WiFi                   | 
   ```

### Bash Script :
1. **Clone or Download the Script**:
   - Save the script as whatever you want. For example : `wifi_password_finder.sh`.

2. **Run the Script**:
   - Open a Bash CLI (Such as Git Bash)
   - Add execution permissions to the file by running `chmod +x wifi_password_finder.sh` (One time only)
   - Run the script:
     ```bash
     ./wifi_password_finder.sh
     ```

3. **View the Output**:
   - The script will display a list of Wi-Fi profiles and their corresponding passwords, if available.

   Example Output:
   ```
   Wi-Fi Profile                 | Password
   ------------------------------|-----------------
   Home_Network                  | password123
   Office_WiFi                   | office12345
   Public_WiFi                   | 
   ```

## Notes

- **Missing Passwords**:
  - If a profile does not have a password stored, the password column will be empty.
- **Admin Privileges**:
  - The script requires administrator privileges to access Wi-Fi profile information.

## Disclaimer

**For Educational Purposes Only**:
  - This script is intended for personal use to recover stored Wi-Fi passwords on your own device.
  - Do not use it to access unauthorized networks or devices.
