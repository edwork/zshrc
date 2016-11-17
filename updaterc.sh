#!/bin/zsh

# Set $EDZSHDIR equal to where you ran the update script
EDZSHDIR="$(dirname "$0")"
cd $EDZSHDIR

# Pull the latest changes from the source
git pull
chmod +x $EDZSHDIR/updaterc.sh

# Remove the original config
rm ~/.zshrc

# Copy the new config to your home
cp $EDZSHDIR/.zshrc ~/.zshrc

# Add users' custom private configs if they exist
if [ -f $EDZSHDIR/local_config ]; then cat $EDZSHDIR/local_config >> ~/.zshrc; fi

echo Your .zshrc file has been updated!

# Re-launch zsh to refresh the config
/usr/bin/zsh
