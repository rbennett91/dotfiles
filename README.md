# Installation
Clone this repository and its submodules:
* `git clone --recursive https://github.com/rbennett91/dotfiles.git`

Setup dotfiles from this repository in home directory:
* `./setup_dotfiles.sh`

# Maintenance
## Adding a vim plugin:
This repository uses git submodules for vim plugins. To add a new plugin:
* `cd` into the `.vim/bundle/` directory
* Add the submodule: `git submodule add <url_of_submodule_repo>`
* Commit and push the change back to this repository.

## Updating vim plugins:

