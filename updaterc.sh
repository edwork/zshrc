#!/bin/sh

# Set variable for where the update script has been placed
SCRIPT=$(readlink -f $0)
SCRIPTDIR=`dirname $SCRIPT`

# Verify the installation of ZSH, if not there install it (only on systems with apt currently
if [ ! -f /usr/bin/zsh ] && [ -f /usr/bin/apt ]; then sudo apt update && sudo apt install zsh -y; fi

# Make sure zsh is the shell
if [ ! -n $BASH ]; then echo Login to set your shell to ZSH: && chsh -s /bin/zsh; fi

# Pull the latest changes from the source
git pull

# Remove the original config if it exists
if [ -f ~/.zshrc ]; then rm ~/.zshrc; fi

# Copy the new config to your home
cp $SCRIPTDIR/.zshrc ~/.zshrc

# Add users' custom private configs if they exist
if [ -f $SCRIPTDIR/local_config ]; then cat $SCRIPTDIR/local_config >> ~/.zshrc; fi

# Add updater script location to .zshrc
echo alias updaterc="'"$SCRIPT"'" >> ~/.zshrc

echo Your .zshrc file has been updated!

# Clean that screen!
clear

# Reload ZSH
/usr/bin/zsh
