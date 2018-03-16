### Installation
Clone this repository and it's submodules:

```git clone --recursive https://github.com/rbennett91/dotfiles.git```

Create symlinks from this repository to home directory:

* ```ln -s dotfiles/.tmux.conf ~/.tmux.conf```
* ```ln -s dotfiles/.vimrc ~/.vimrc```
* ```ln -s dotfiles/.vim ~/.vim```

### Maintenance
##### Adding a vim plugin:
This repository uses git submodules for vim plugins. To add a new plugin:
* `cd` into the `.vim/bundle/` directory
* Add the submodule: ```git submodule add <url_of_submodule_repo>```
* Commit and push the change back to this repository.
