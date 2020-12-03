#/bin/bash

# Install vundle (required by vimrc)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install zsh (required by zshrc)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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

# Install macvim
brew install cmake
brew install macvim
brew unlink vim
python3 ~/.vim/bundle/Youcompleteme/install.py --all