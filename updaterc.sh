#!/bin/zsh

# Pull the latest changes from the source
git reset --hard HEAD
git pull

# Remove the previous config
rm ~/.zshrc

# Copy the new config to your home
cp ./.zshrc ~/.zshrc

echo Your .zshrc file has been updated!

# Re-launch zsh to refresh the config
/bin/zsh
