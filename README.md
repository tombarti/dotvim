Fresh Install (linux)
====================

Clone repository in your home directory
> `git clone http://github.com/username/dotvim.git ~/.vim`

Create a symbolic link so that vim recognises .vim/vimrc as .vimrc
> `ln -s ~/.vim/vimrc ~/.vimrc`

> `cd ~/.vim`

Initialise and update the submodules
> `git submodule update --init`

To update all the submodules:

> `git submodule foreach git pull origin master`
