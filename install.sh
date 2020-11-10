#!/bin/bash

cd ~; git clone https://github.com/j-wanner/dots.git;
cp -r dots/files/fonts .local/share/

cd ~/dots
for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".gitignore" ]] && continue
  #[[ "$f" == ".DS_Store" ]] && continue
  
  ln -snfv ~/dots/"$f" ~/
done

ln -snfv ~/dots/dir/.i3/config ~/.i3/config
ln -snfv ~/dots/dir/.config/fcitx ~/.config/fcitx
ln -snfv ~/dots/dir/.config/fontconfig ~/.config/fontconfig
