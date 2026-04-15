#!/bin/bash
if [  -z $1 ];
then
echo "The directory name must not be empty"
echo "Usage: ./create_directory.sh <folder_name>"
exit 1
fi
folder=$1
if [ -d $folder ];
then
echo "Folder already exist"
echo  "contents of the  $folder "
ls -l  "$folder"

else 
mkdir "$folder"
echo "successfully created $folder directory"
fi
