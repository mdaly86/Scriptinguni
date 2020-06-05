#! /bin/bash
choice=0
MYPASS=30
read -sp 'Your password: ' password;

if [ $password -ne $MYPASS ] 
then
   echo "Access Denied"
   echo "Goodbye" 
  exit 1
else
   echo "Access Granted"
   echo  "Select an option: "
   echo "1 Create a folder "
   echo "2 Copy a folder"
   echo "3 Set a password" 
echo ""
echo -n "                Choice: "
read choice
case "$choice" in
 1 ) ./foldermaker.sh ;;
 2 ) ./foldercopier.sh;;
 3 ) ./setPassword.sh;;
esac

exit 0
fi

