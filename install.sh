#!/bin/sh

# Checks dependencies
if type "rsync" > /dev/null
then
    echo "Dependency: rsync installed"
else
  echo "Error: rsync not installed"
  exit 1
fi
# Setups config
echo "Installing config"
if [ ! -d "$HOME/.config" ]
then
  mkdir "$HOME/.config"
fi
cp ./src/backupsys.config $HOME/.config

# Setups dwmblock and backup script
echo "Installing dwmblock and backup scripts"
if [ ! -d $HOME/.local/bin ]
then
  mkdir -p "$HOME/.local/bin/statusbar"
fi
cp ./src/backupsys.backup $HOME/.local/bin
cp ./src/backupsys.dwmblock $HOME/.local/bin/statusbar

echo "Finish installing application";
