#!/bin/bash

# colors :)
info=$(tput setaf 2)
reset=$(tput sgr0)

# basically check against a list of default installed packages on debian 10
apt list --installed | grep -vf ./dataFiles/defaultInstalled.data > ./dataFiles/diffInstalled.data

printf "${info}Check in ./dataFiles/currentInstalled.data${reset}\n\n"

printf "Done!\n"

exit 0
