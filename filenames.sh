#!/bin/bash
input="/home/student/scripts/portfolio/week3/filenames.txt"

while IFS= read -r line
do
if [[-f "$line"]];
then
echo "$line: That file exists"
elif [[-d "$line" ]]; 
then
echo "$line: Thats a directory"
else
    echo "$line: I don't know what that is"
fi
done < "$input"
