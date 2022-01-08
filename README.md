# GNOME-GoToFolder
A simple program written in bash that will browse directly to a folder specified by the user using their graphical file manager. After using macOS for quite a while, I was surprised that the distro I was using did not provide functionality that allowed the user to directly navigate to a folder by supplying its path. This script attempts to imitate that behavior found in macOS.

__________________
 
# Dependencies
**Zenity**
Your desktop environment must support GTK+ as this application uses Zenity to provide a GUI for user input and notifications.

*Debian/Ubuntu/derivatives*
   `sudo apt install zenity`
   
*Arch*
   `sudo pacman -S zenity`
   
# Usage
Edit the script to change the variable `fileUtility` to your file manager of choice. By default this is Nautilus as it is the included GNOME file manager, for which the script was originally designed for. Give the script executable permissions with `sudo chmod a+x GoToFolder.sh` and execute via your terminal. Alternatively, you can assign it a hotkey through your DE so you can launch it on command.

# Issues
* Script infinite loops when prompting user for a path if they simply close the dialog
* Make dialog boxes scale properly to user's display resolution

