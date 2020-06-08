#!/bin/bash
RED='\033[0;32m'
NC='\033[0m'

echo -e "${RED}[*] Please Enter the file name ${NC}"
	FILE=`zenity --file-selection --title="Select a File"`	
	echo "you selected $FILE"
	(
  echo 25
  echo "# Setting up..."
  sleep 2

  echo 30
  echo "# Reading files..."
  sleep 2

  echo 70
  echo "# Creating content..."
  sleep 1

  echo 100
  echo "# Done!"
) | zenity --title "Progress bar example" --progress --auto-kill
	#read file1;
	if [ -f $FILE ]; then
    		cp $FILE $FILE.bak
    		echo "file successfully backed up"
		exit 0
	fi
done
