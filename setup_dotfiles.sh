#! /bin/bash

# setup dotfiles in home directory.


# symlink_dotfiles stay the same across systems 
symlink_dotfiles=(
    '.tmux.conf'
    '.vimrc'
    '.vim'
    '.config/fish/functions'
)

# copy_dotfiles might change between systems and require manual configuration
copy_dotfiles=(
    '.gitconfig'
)

# if ever done by hand, note that 'ln -s' needs a full path, not relative.
for d in "${symlink_dotfiles[@]}"  
do
    echo "... symlinking $PWD/$d to $HOME/$d"
    ln -s "$PWD/$d" "$HOME/$d"
done

for d in "${copy_dotfiles[@]}"  
do
    echo "... copying $PWD/$d to $HOME/$d. open and configure $HOME/$d"
    cp "$PWD/$d" "$HOME/$d"
done
