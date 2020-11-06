#!/bin/bash

#sed -i -e '/AuthorizedKeysFile/d' /etc/pacman-mirrors.conf

sed -i -e '/^Method /d' /etc/pacman-mirrors.conf
sed -i -e '/^MOnlyCountry /d' /etc/pacman-mirrors.conf
echo -e \\nMethod=rank\\nOnlyCountry = Japan >> /etc/pacman-mirrors.conf

#for f in .??*
#do
#  [[ "$f" == ".git" ]] && continue
#  [[ "$f" == ".DS_Store" ]] && continue
#
#  echo "$f"
#done

