#!/bin/bash

# colors
info=$(tput setaf 2)
reset=$(tput sgr0)

printf "\n${info}Searching for unauthorized? not allowed? against company policy files${reset}\n"

# clear foundFiles.data
touch ./dataFiles/foundFiles.data
rm -rf ./dataFiles/foundFiles.data

printf "Audio Files:\n" >> ./dataFiles/foundFiles.data

find 2>/dev/null / -name *.wav -not -path "/usr/share/*", "/usr/lib/*" 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.aif 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mp3 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mid 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mtm 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.ec3 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.flp 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.wproj 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.weba 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.ust 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.copy 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mui 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mmpz 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.l 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.abc 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.wus 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.vpw 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.aax 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.m4a 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.m4b 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.aac 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.m4p 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.ogg -not -path "/usr/share/*" 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.wma 1>>./dataFiles/foundFiles.data

printf "\nVideo Files:\n" >> ./dataFiles/foundFiles.data

find 2>/dev/null / -name *.webm -not -path "/usr/share/*" 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mpg 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mp2 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mpeg 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mpe 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mpv 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.ogg -not -path "/usr/share/*" 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mp4 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.m4p 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.m4v 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.avi 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.wmv 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.mov 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.qt 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.flv 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.swf 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.avchd 1>>./dataFiles/foundFiles.data

printf "\nImage Files:\n" >> ./dataFiles/foundFiles.data

find 2>/dev/null / -name *.jpg -not -path "/usr/share/*" 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.png -not -path "/usr/lib/*", "/var/lib/*" 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.gif -not -path "/usr/lib/*" 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.webp 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.tiff 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.psd 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.raw 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.bmp -not -path "/usr/lib/*" 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.heif 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.indd 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.jpeg 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.svg -not -path "/usr/*" 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.ai 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.eps 1>>./dataFiles/foundFiles.data
find 2>/dev/null / -name *.pdf -not -path "/usr/share/*", "/usr/lib/*" 1>>./dataFiles/foundFiles.data

printf "\n\n${info}Any found files are in ./dataFiles/foundFiles.data${reset}\n\n"

exit 0
