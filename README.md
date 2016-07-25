Create a symbolic link so that __~/.vimrc__ points to __~/.vim/vimrc__
 
`~/.vim/vimrc ~/.vimrc`

Fresh Install (linux)
====================

> `cd ~`

> `git clone http://github.com/username/dotvim.git ~/.vim`

> `ln -s ~/.vim/vimrc ~/.vimrc`

> `cd ~/.vim`

> `git submodule update --init`

To update all the submodules:

> `git submodule foreach git pull origin master`
