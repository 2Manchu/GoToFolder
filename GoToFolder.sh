#!/bin/bash

# Change the below variable to the name of your installed file explorer utility. 
# In my case it is the default GNOME file utility Nautilus.
fileUtility=nautilus

# Function to prompt user for directory
getPath() {
	userPath=$(zenity --entry --width 250 --title "Go to Folder..." --text "Path to Folder")

	# Make sure the user has actually entered a path and not just closed the box. -z option checks for an empty variable
	if [[ -z $userPath ]]
	then
		exit
	fi

	# Expand the '~' in the specified path
	userPath="${userPath//\~/$HOME}"
}

getPath

# If the user inputs an directory that doesn't exist, error and prompt for a new path
while [ ! -d "$userPath" ]
do
	zenity --error --width 300 --title "Invalid directory specified" --text "Path \"$userPath\" does not exist, or is not a directory."
	getPath
done

$fileUtility "$userPath"
