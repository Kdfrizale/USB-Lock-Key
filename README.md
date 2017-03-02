# USB-Lock-Key
This project turns your raspberry pi (or any other Debian based computer) into a lock for a USB thumb drive.  Only the unique thumb drive will be accepted.  The script is easily edited to change the function to anything instead of opening a lock.  

#THIS IS CURRENTLY IN DEVELOPMENT, INSTRUCTIONS WILL NOT MAKE SENSE UNTIL THE PROJECT IS FINISHED
#HOWEVER ALL CODE IS FINISHED, IF YOU WOULD LIKE TO TRY TO INSTALL WITHOUT THE EVENTUAL AUTOMATIC INSTALLATION

#Step 1
Warning: this will override a previous installation of usbmount

Clone the project to your home directory

```
cd ~
git clone https://github.com/Kdfrizale/USB-Lock-Key.git
```

run the setup.sh script and follow the instructions
```
cd ~/USB-Lock-Key
sudo ./setup.sh 
```

After the script has finsihed, your system is already responding to your thumb drive key
However, the script only prints out "file found" or "file not found"
In order to do more you must edit the Check_For_Key.sh file located in ~/USB-Lock-Key directory.
I have provide an example to turn an LED on or off in the scripts comments, but you can add any script
you want there to have your thumb drive key do whatever you need. 


