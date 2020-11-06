#!/bin/bash

#=== mirror config
#==================================
### check & sort
#sed -i -e '/^Method.*/d' /etc/pacman-mirrors.conf;sed -i -e '/^OnlyCountry.*/d' /etc/pacman-mirrors.conf
#echo -e \\nMethod = rank\\nOnlyCountry = Japan >> /etc/pacman-mirrors.conf && pacman-mirrors --fasttrack && pacman -Syyu
### manual
echo -e "## Country : Japan\nServer = http://ftp.tsukuba.wide.ad.jp/Linux/manjaro/stable/\$repo/\$arch\n\n## Country : Japan\nServer = http://ftp.riken.jp/Linux/manjaro/stable/\$repo/\$arch\n\n## Country : Taiwan\nServer = http://free.nchc.org.tw/manjaro/stable/\$repo/\$arch\n\n## Country : Singapore\nServer = http://download.nus.edu.sg/mirror/manjaro/stable/\$repo/\$arch\n\n## Country : Indonesia\nServer = http://kartolo.sby.datautama.net.id/manjaro/stable/\$repo/\$arch\n\n## Country : United_States\nServer = http://mirror.math.princeton.adu/pub/manjaro/stable/\$repo/\$arch\n\n## Country : Germany\nServer = http://mirror.netzspielplatz.de/manjaro/stable/\$repo/\$arch\n" > /etc/pacman.d/mirrorlist && pacman -Syyu


#for f in .??*
#do
#  [[ "$f" == ".git" ]] && continue
#  [[ "$f" == ".DS_Store" ]] && continue
#
#  echo "$f"
#done

