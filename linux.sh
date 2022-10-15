# This is a comment
# interpreter
#!/bin/bash

# anything like this is just a bash command
clear

# check for superuser
if [ "$(id -u)" != "0" ]; then
   printf "You must be a superuser!\n"
   printf "Use sudo or something!\n"
   exit 1
fi

# make .vimrc
printf "set nocompatible\nset backspace=indent,eol,start" > ~/.vimrc

# fix home directory permissions
chmod 700 -R /home/*

# remove random stuff
apt-get purge telnet -y
apt-get purge netcat -y
apt-get purge nc -y
apt-get purge john -y
apt-get purge nikto -y
apt-get purge hydra -y

# disable guest login
printf "allow-guest=false" >> /etc/lightdm/lightdm.conf

# lock root account
usermod -L root
usermod -l root

# check services
./serviceSort.sh
./packageSort.sh
./searchForFiles.sh

# firewall neccesary settings
ufw allow 80
ufw allow 443

# login banners
printf "\nOnly authorized users are welcome on this system. If you are not authorized, do not continue. Make sure you have proper reason and ability to access this system.\n\nAll network activity is being logged and monitored. These logs can be used to investigate and prosecute unauthorized access.\n\n" > /etc/issue.net

printf "\nOnly authorized users are welcome on this system. If you are not authorized, do not continue. Make sure you have proper reason and ability to access this system.\n\nAll network activity is being logged and monitored. These logs can be used to investigate and prosecute unauthorized access.\n\n" > /etc/motd

printf "\n\n"

printf "Done!\n"

exit 0
