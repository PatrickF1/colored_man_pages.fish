#!/usr/bin/sh

echo "Preparing to install colored_man_pages.fish"
git clone https://github.com/PatrickF1/colored_man_pages.fish
mv ./colored_man_pages.fish/functions/* $HOME/.config/fish/functions
rm -rf colored_man_pages.fish
echo "Done!"
