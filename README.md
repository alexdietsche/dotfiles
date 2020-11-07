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
black: python code formatter 
isort: python imports formatter
'''
pip install flake8 black isort
'''

