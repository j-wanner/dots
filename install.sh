#!/bin/bash

cd ~; git clone https://github.com/j-wanner/dots.git;
cp -r dots/file/fonts .local/share/

#echo -e "export LANG=\"ja_JP.UTF-8\"\nexport XMODIFIERS=\"@im=fcitx\"\nexport XMODIFIER=\"@im=fcitx\"\nexport GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport DefaultIMModule=fcitx" > ~/.xprofile
#echo -e "\nexport GTK_IM_MODULE=fcitx\nexport XMODIFIERS=@im=fcitx\nexport QT_IM_MODULE=fcitx" >> ~/.bashrc
#echo -e "\n\nexec --no-startup-id fcitx" >> ~/.i3/config


for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".gitignore" ]] && continue
  #[[ "$f" == ".DS_Store" ]] && continue

  ln -sfnv ~/dots/"$f" ~/
#  echo "$f"
done

