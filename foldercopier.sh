#!/bin/bash

read -p "type the name of the folder you would like to copy: " week2
#if the name is a valid directory
if [ -d "$week2" ]; then
    #copy it to a new location
    read -p "type the name of the destination folder: " week3
    cp -r "$week2" "$week3"
else
    #otherwise, print an error
    echo "I couldn't find that folder"
fi
