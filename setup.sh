#!/bin/sh
echo "Updating..."
sudo apt-get update

echo "Installing dependencies..."
sudo apt-get install usbmount


##get uuid of thumb drive
##run blkid command , ask user to insert thumb drive, run blkid again ; compare differences to find thumb drive
##parse result to find uuid



##edit usbmount to have uuid in the variable value



##Override usbmount with edited version



##Possibly add Check_For_Key.sh to /usr/bin directory
##Add Check_For_Key.sh to autorun on boot


echo "You must reboot for the changes to take effect."
read -p "Do you wish to reboot now?" yn
    case $yn in
        [Yy]* ) sudo reboot; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac



