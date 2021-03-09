# README

Softline `.vimrc` file:
```
ln -s ~/git/dotfiles/.vimrc ~/.vimrc
```

Setup vim-plug:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install vim plugins, open nvim and call:
```
:PlugInstall
```

Install vimspector gadgets, open nvim and call:
```
:VimspectorInstall
```

Install

pylint: syntax and PEP8 style checker

black: python code formatter

isort: python imports formatter

```
pip install pylint black isort
```

coc.nvim requirements:

install nodejs >= 10.12:
```bash
sudo apt update
sudo apt install nodejs
```

install ctags for coc-python
'''
sudo apt-get install ctags
'''
