#/bin/bash

workingdir=`pwd`

files=$(ls data)

for file in $files
    do
        ln -fs "$workingdir/data/$file" "$HOME/.$file"
done

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update

# Install postgres and mysql
brew install postgres
brew install mysql

# Install Python
brew install python