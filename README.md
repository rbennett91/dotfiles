### Installation
Clone this repository and it's submodules:

```git clone --recursive https://github.com/rbennett91/dotfiles.git```

Create symlinks from this repository to your home directory:

Examples:
* ```ln -s /home/ryan/dotfiles/.tmux.conf /home/ryan/.tmux.conf```
* ```ln -s /home/ryan/dotfiles/.vimrc /home/ryan/.vimrc```
* ```ln -s /home/ryan/dotfiles/.vim /home/ryan/.vim```
* ```ln -s /home/ryan/dotfiles/.config/fish/functions /home/ryan/.config/fish/functions```

You'll need to specify the full path of the source and destination of each symbolic link.

### Maintenance
##### Adding a vim plugin:
This repository uses git submodules for vim plugins. To add a new plugin:
* `cd` into the `.vim/bundle/` directory
* Add the submodule: ```git submodule add <url_of_submodule_repo>```
* Commit and push the change back to this repository.
