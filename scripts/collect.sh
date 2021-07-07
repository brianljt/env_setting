#!/bin/bash
# Collect vim, zsh and tmux configuration and prepare a commit

# ZSH related configuration
echo "Collecting ZSH configuration..."
cp ~/.zshrc zsh/zshrc
echo "OK"

# Tmux related configuration
echo "Collecting Tmux configuration..."
cp ~/.tmux.conf tmux/tmux.conf
echo "OK"

# VIM related configuration
echo "Collecting VIM configuration..."
cp ~/.vimrc vim/vimrc
echo "OK"
