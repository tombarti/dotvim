Create a symbolic link so that __~/.vimrc__ points to __~/.vim/vimrc__
 
`~/.vim/vimrc ~/.vimrc`

To install vim on other machine, run this:

`cd ~`
`git clone http://github.com/username/dotvim.git ~/.vim`
`ln -s ~/.vim/vimrc ~/.vimrc`
`ln -s ~/.vim/gvimrc ~/.gvimrc`
`cd ~/.vim`
`git submodule init`
`git submodule update`

To update all the submodules:

`git submodule foreach git pull origin master`
