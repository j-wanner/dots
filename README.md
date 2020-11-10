### Dotfiles for Linux(manjaro i3)

```
curl -sL {URL} | sh    ※シェルファイルがある場所
curl -s raw.githubusercontent.com/{URL}/install.sh | bash
bash -c "$(curl -L raw.githubusercontent.com/{URL}/install.sh)"

OR

git clone https://github.com/username/dotfiles
cd dotfiles
./install.sh
```

#### 実行後

- pacman -Syu
- vivaldi-snapshot
- google-chrome-stable
- google-chrome-beta
