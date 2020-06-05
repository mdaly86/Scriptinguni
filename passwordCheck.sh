#! /bin/bash

MYPASS=30
read -sp 'Your password: ' password;

if [ $password -ne $MYPASS ] 
then
   echo "Access Denied" 
   echo  $password | sha256sum --check secret.txt
exit 1
else
   echo "Access Granted"
   echo  "30" | sha256sum --check secret.txt
exit 0
fi
