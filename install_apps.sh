#!/bin/bash

# Create a directory for download the apps
mkdir ~/Desktop/apps

# Create an array files that contains list of filenames
files=($(< apps/apps.txt))
 
# Read through the url.txt file and execute wget command for every filename
for file in "${files[@]}"; do 
    wget -P ~/Desktop/apps  "${file}"
  done
done
