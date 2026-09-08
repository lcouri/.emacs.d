#!/bin/bash

# This script makes links to a .desktop file and icons from the emacs repo to allow for desktop integration

# This is because I usually just compile emacs without actually installing it to the system
# Which means there's no desktop environment integration by default (it won't show up in KRunner or other launchers, or in Open With menus)
# Also means that it's only "installed" for the current user, but I don't have a problem with that

# Notes:
# Should probably use XDG_DATA_HOME and default to ~/.local/share rather than only using ~/.local/share
# Also depends on emacs repo being located in ~/projects/emacs/

## ICONS ##
mkdir -p ~/.local/share/icons/hicolor/{128x128,16x16,24x24,32x32,48x48,scalable}/apps

DIRS=$(ls ~/projects/emacs/etc/images/icons/hicolor/)
echo "$DIRS" | while read line; do
    echo "Linking icons: $line"
    ln -s ~/projects/emacs/etc/images/icons/hicolor/$line/apps/* ~/.local/share/icons/hicolor/$line/apps/
done;

## DESKTOP ##
echo "Linking .desktop"
ln -s ~/.emacs.d/emacs.desktop ~/.local/share/applications/
