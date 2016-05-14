# Dotfiles Backup - Mostly Vim

## vimrc
```bash
$ cd ~/path/to/a/dir
$ git clone https://github.com/saulecabrera/dotfiles 
$ ln -s ~/path/to/a/dir/dotfiles/vimrc ~/.vimrc
$ vim +PluginInstall +qall
```
Before running the last step, make sure to have [Vundle](https://github.com/VundleVim/Vundle.vim) properly configured.
