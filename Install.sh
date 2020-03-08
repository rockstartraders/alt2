#!/usr/bin/env bash

if (( $EUID != 0 )); then
    echo
    echo "Hello, I may need to install some package required for this to run"
    echo "Please run this as root"
    echo
    exit 0
else
   sleep 3
   echo
   echo "I am so Dumb and Lazy to Figure out the Distro and package manager that you are using."
   sleep 2
   echo "Please help me out instead."
   echo
   sleep 2
   echo "Please install or make sure you have the following:"
   sleep 2
   echo "Python3 (Version 3.6+)"
   sleep 2
   echo "Pip3"
   sleep 2
   echo "curl (if you dont have it yet)"
   sleep 2
   echo -e "\e[31msubversion\e[39m (For version control and update)"
   echo
   echo "Thank You ! I will take care of the rest ..."
   sleep 5

   echo
   echo
   echo "Starting .."
   sleep 2
   echo "Please Wait ..."
   sleep 5
   echo "Installing requirements.txt"
   sleep 5
   pip3 install -r requirements.txt &> /dev/null
   echo -e "\e[5m\e[31mDone installing requirements.txt\e[25m\e[39m"
   sleep 2
   echo "Creating a new directory"
   mkdir /alt2/
   sleep 2
   echo -e "\e[5m\e[31mDone Creating a new Directory.\e[25m\e[39m"
   sleep 3
   echo "Copying all necessary files"
   sleep 5
   cp -p alt2.py /alt2
   cp -aR bin /alt2
   cp -aR include /alt2
   cp -aR lib /alt2
   cp -aR lib64 /alt2
   cp -p alt2_.py /alt2
   cp -p pyvenv.cfg /alt2
   cp -p README.md /alt2
   cp -p requirements.txt /alt2
   cp -p update.sh /alt2
   cp -p version.txt /alt2
   cp -p parser.sh /alt2
   cp -p change_log.txt /alt2
   echo -e "\e[5m\e[31mDone Copying all necessary files.\e[25m\e[39m"
   sleep 2
   echo "Creating alt2 command"
   # alias
   echo "#  THIS LINE IS FOR alt2 " >> ~/.bashrc 2> /dev/null
   echo "# THIS LINE IS FOR alt2 " >> ~/.zshrc 2> /dev/null
   echo 'PATH=$PATH:/alt2/' >> ~/.bashrc 2> /dev/null
   echo 'PATH=$PATH:/alt2/' >> ~/.zshrc 2> /dev/null
   echo "alias alt2='alt2_.py'" >> ~/.bashrc 2> /dev/null
   echo "alias alt2='alt2_.py'" >> ~/.zshrc 2> /dev/null
   sleep 3
   echo -e "\e[5m\e[31mDone creating alt2 command.\e[25m\e[39m"
   sleep 2
   source .zshrc 2> /dev/null
   source .bashrc 2> /dev/null
   echo -e "All Done .."
   echo -e "Just type \e[5m\e[32malt2\e[25m\e[39m to start."
   echo -e "Feel free to delete/purge this folder if alt2 command is already working."
   sleep 2
   echo -e "To remove this completely please go to this Path:\e[5m\e[31m/alt2\e[25m\e[39m and do rm -rf"
   echo -e "Also please remove the Alias and PATH listed via ~/.bashrc or ~/.zshrc"
   echo -e "Thank You ==>  \e[5m\e[31mJAMES\e[25m\e[39m"
   echo
   exit

fi







































