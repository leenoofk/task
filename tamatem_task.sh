#!/bin/bash
# specify the interpreter

# move to the directory that contains all the files
cd files/

# create an array of unique language names
# 1- listing all the files in the directory
# 2- extracting the language from the file name by cutting the file and taking the part before the "-" (which is the language)
# 3- sorting the languages and removng duplicate values
languages=($(ls *.txt | cut -d'-' -f1 | sort -u))

# loop through each language
for lang in "${languages[@]}"; do
  # create a subfolder for each language
  mkdir -p "$lang"

  # move the files from the current folder to the folder of the appropriate language
  mv "$lang"-*.txt "$lang"/
done