#! /bin/bash
choice=0
MYPASS=30
GREEN=$'\033[00;32m'
BLUE=$'\e[34m'
RED=$'\e[31m'
PURPLE=$'\033[35m'
BROWN=$'\033[33m'
CYAN=$'\033[36m'
GREY=$'\033[37m'

read -sp 'Your password: ' password;

if [ $password -ne $MYPASS ] 
then
   echo "${RED}Access Denied"
   echo "${GREY}Goodbye" 
  exit 1
else
   echo "${GREEN}Access Granted"
   echo "Select an option: "
   echo "${PURPLE}1 Create a folder "
   echo "${RED}2 Copy a folder"
   echo "${GREY}3 Set a password" 
   echo "${GREEN}4 Calculator"
   echo "${BROWN}5 Create Week Folders"
   echo "${CYAN}6 Check filenames"
   echo "${BLUE}7 Download a File"
   echo "${PURPLE}8 Exit "
   
echo ""
echo -n "                ${GREY}Choice: "
read choice
case "$choice" in
 1 )  /home/student/scripts/portfolio/week2/foldermaker.sh ;;
 2 )  /home/student/scripts/portfolio/week2/foldercopier.sh;;
 3 )  /home/student/scripts/portfolio/week2/setPassword.sh;;
 4 ) ./calculator.sh;;
 5 ) ./megafoldermaker.sh;;
 6 ) ./filenames.sh;;
 7 ) ./InternetDownloader.sh;;
 8 ) ./exit.sh;;
 esac

exit 0
fi

