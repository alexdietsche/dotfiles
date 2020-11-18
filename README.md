TODO
install neovim (>v0.4)
on ubuntu 18.04 default neovim v0.2, to install v0.4.4:
'''
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
'''

after installation neovim softlink init.vim file:
'''
ln -s ~/git/dotfiles/nvim ~/.config/nvim
'''

setup vim-plug:
'''
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
'''

Install vim plugins, open nvim and call:
'''
:PlugInstall
'''
Install vimspector gadgets, open nvim and call:
'''
:VimspectorInstall
'''

Install
flake8: syntax and PEP8 style checker
pylint: syntax and PEP8 style checker
black: python code formatter
isort: python imports formatter
'''
pip install pylint black isort
'''

coc.nvim requirements:
install nodejs >= 10.12, on ubuntu `18.04 default version is 8.x, to install 10.x run`:
'''
sudo apt update
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash

sudo apt update
sudo apt -y install gcc g++ make
sudo apt -y install nodejs
'''

install ctags for coc-python
'''
sudo apt-get install ctags
'''
