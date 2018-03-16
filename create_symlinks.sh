#! /bin/bash

# symlinks dotfiles to your home directory.


# add new dotfiles here
dotfiles=(
    '.tmux.conf'
    '.vimrc'
    '.vim'
    '.config/fish/functions'
)

# if you ever do this by hand, note that 'ln -s' needs a full path (not relative).
for d in "${dotfiles[@]}"  
do
    echo "... symlinking $PWD/$d to $HOME/$d"
    ln -s "$PWD/$d" "$HOME/$d"
done
