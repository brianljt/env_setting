#!/bin/zsh
# Deploy vim, zsh and tmux configuration to current env

BACKUP_DIR=~/env_backup/$(date +%Y%m%d)
mkdir -p ${BACKUP_DIR}

# ZSH related configuration
echo "Deploying ZSH configuration..."
cp ~/.zshrc ${BACKUP_DIR}
cp zsh/zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc
sudo chsh -s $(which zsh)
echo "OK"

# Tmux related configuration
echo "Deploying Tmux configuration..."
cp ~/.tmux.conf ${BACKUP_DIR}
cp tmux/tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf
echo "OK"

# VIM related configuration
echo "Deploying VIM configuration..."
cp ~/.vimrc ${BACKUP_DIR}
cp vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "OK"

# neccessary packages
echo "Deploying neccessary packages..."
sudo apt-get install silversearcher-ag
echo "OK"
