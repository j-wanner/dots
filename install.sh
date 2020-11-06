#!/bin/bash

sed -i -e '/^Method.*/d' /etc/pacman-mirrors.conf;sed -i -e '/^OnlyCountry.*/d' /etc/pacman-mirrors.conf
echo -e \\nMethod = rank\\nOnlyCountry = Japan >> /etc/pacman-mirrors.conf && sudo pacman-mirrors --fasttrack && sudo pacman -Syu

#for f in .??*
#do
#  [[ "$f" == ".git" ]] && continue
#  [[ "$f" == ".DS_Store" ]] && continue
#
#  echo "$f"
#done

