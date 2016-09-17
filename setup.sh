#!/bin/sh
echo "Updating..."
sudo apt-get update

echo "Installing dependencies..."
sudo apt-get install usbmount


##get uuid of thumb drive
##run blkid command , ask user to insert thumb drive, run blkid again ; compare differences to find thumb drive
##parse result to find uuid
sudo blkid -s UUID -o value > devicesBefore.info
read -p "Insert the thumb drive to become a key now. Press Enter to continue.."
sudo blkid -s UUID -o value > devicesAfter.info

DEVICE_UUID = "$(grep -v -f devicesBefore.info devicesAfter.info)"



##edit usbmount to have uuid in the variable value



##Override usbmount with edited version
sudo cp usbmount /usr/share/usbmount


##Possibly Add Check_For_Key.sh to /usr/bin directory
##sudo cp check_for_key.sh /usr/local/bin/check_for_key.sh

##Add Check_For_Key.sh to autorun on boot
sudo cp check_for_key.sh /etc/init.d/check_for_key.sh
sudo update-rc.d check_for_key.sh defaults


echo "You must reboot for the changes to take effect."
read -p "Do you wish to reboot now?" yn
    case $yn in
        [Yy]* ) sudo reboot; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac




