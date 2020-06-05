 #! /bin/bash

read -p 'Foldername  : ' foldername_var
echo "Foldername : $foldername_var"
read -sp 'Password : ' pass_var
echo Password Changed 
echo "$pass_var" | sha256sum  > secret.txt

