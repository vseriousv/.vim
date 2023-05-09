## Installation

### clone the repo in your home directory
```
$ git clone git@github.com:vseriousv/.vim.git
```

### create a symlink for the .vimrc file
```
# for macos
$ ln -s ~/.vimrc .vimrc
```

### install Plug (dependency manager)
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

### You need install NodeJS
[instuction](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04)

### open vim and enter the following command to install all plugings
```
:PlugInstall
```

### enjoy!
