#!/bin/bash
RED=$' \e[31m'
echo "-------------------------------------"
echo "Welcome to the web downloader"
echo "-------------------------------------"

# Prompt the user to enter a website to be downloaded
read -p "Please type a website URL to download or type “exit” to quit: " URL
read -p "Prompt the user to type a download location: " location
wget p "$URL" "$location"
echo "                         "
echo "${RED}The URL is downloading to week 3 directory"
exit 1
fi

