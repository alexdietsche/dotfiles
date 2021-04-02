# README

Setup **Python**, Ubuntu 20.04 comes with python3 preinstalled, to set it up properly run:
```bash
sudo apt install -y python3-pip
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev
```


Setup **VIM**

Softline `.vimrc` file:
```
ln -s ~/git/dotfiles/.vimrc ~/.vimrc
```

Install packages for python linter 

pylint: syntax and PEP8 style checker

black: python code formatter

isort: python imports formatter

```
pip3 install pylint black isort
```

coc.nvim requirements:

install nodejs >= 10.12:
```bash
sudo apt update
sudo apt install nodejs
sudo apt install npm
```

install ctags for coc-python
```
sudo apt-get install ctags
```

Setup vim-plug:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

When first openning vim ignore the "Cannot find color scheme" warning. The color scheme will be installed when installing the vim-plug plugins.

Install vim plugins, open vim and call:
```
:PlugInstall
```

Install vimspector gadgets, open vim and call:
```
:VimspectorInstall
```

