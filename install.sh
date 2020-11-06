#!/bin/bash

#=== mirror config
#==================================
### check & sort
#sed -i -e '/^Method.*/d' /etc/pacman-mirrors.conf;sed -i -e '/^OnlyCountry.*/d' /etc/pacman-mirrors.conf
#echo -e \\nMethod = rank\\nOnlyCountry = Japan >> /etc/pacman-mirrors.conf && pacman-mirrors --fasttrack && pacman -Syyu
### manual
#echo -e "## Country : Japan\nServer = http://ftp.tsukuba.wide.ad.jp/Linux/manjaro/stable/\$repo/\$arch\n\n## Country : Japan\nServer = http://ftp.riken.jp/Linux/manjaro/stable/\$repo/\$arch\n\n## Country : Taiwan\nServer = http://free.nchc.org.tw/manjaro/stable/\$repo/\$arch\n\n## Country : Singapore\nServer = http://download.nus.edu.sg/mirror/manjaro/stable/\$repo/\$arch\n\n## Country : Indonesia\nServer = http://kartolo.sby.datautama.net.id/manjaro/stable/\$repo/\$arch\n\n## Country : United_States\nServer = http://mirror.math.princeton.adu/pub/manjaro/stable/\$repo/\$arch\n\n## Country : Germany\nServer = http://mirror.netzspielplatz.de/manjaro/stable/\$repo/\$arch\n" > /etc/pacman.d/mirrorlist && pacman -Syyu

#=== locale
#==================================
sed -i -e 's/^.*ja_JP.UTF-8.*$/ja_JP.UTF-8 UTF-8/' /etc/locale.gen;locale-gen
sed -i -e 's/^.*LANG.*$/LANG=ja_JP.UTF-8/' /etc/locale.conf;source /etc/locale.conf

#=== input/fonts
#==================================
pacman -Sy fcitx fcitx-configtool fcitx-mozc fcitx-qt5 fcitx-gtk2 fcitx-gtk3

echo -e "export LANG=\"ja_JP.UTF-8\"\nexport XMODIFIERS=\"@im=fcitx\"\nexport XMODIFIER=\"@im=fcitx\"\nexport GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport DefaultIMModule=fcitx" > ~/.xprofile
echo -e "\nexport GTK_IM_MODULE=fcitx\nexport XMODIFIERS=@im=fcitx\nexport QT_IM_MODULE=fcitx" >> ~/.bashrc

echo -e "\n\nexec --no-startup-id fcitx" >> ~/.i3/config


#for f in .??*
#do
#  [[ "$f" == ".git" ]] && continue
#  [[ "$f" == ".DS_Store" ]] && continue
#
#  echo "$f"
#done

