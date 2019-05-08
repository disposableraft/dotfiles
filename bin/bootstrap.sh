#/bin/bash

workingdir=`pwd`

files=$(ls data)

for file in $files
    do
        ln -fs "$workingdir/data/$file" "$HOME/.$file"
done
