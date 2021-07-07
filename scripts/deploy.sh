#!/bin/bash
# Deploy vim, zsh and tmux configuration to current env

BACKUP_DIR=~/env_backup/$(date +%Y%m%d)
mkdir -p ${BACKUP_DIR}

# ZSH related configuration
echo "Deploying ZSH configuration..."
cp ~/.zshrc ${BACKUP_DIR}
cp zsh/zshrc ~/.zshrc
echo "OK"

