### Dotfiles for Linux(manjaro i3)

```
curl
  -s 進捗情報非表示
  -L リダイレクト
  
curl -L https://{URL}/install.sh | bash    ※-L 要るかも。GitHubのraw等、シェルファイルのURL
curl {ドメイン} | sh    ※シェルファイルがある場所の
bash -c "$(curl -L raw.githubusercontent.com/{URL}/install.sh)"



OR

git clone https://github.com/username/dotfiles
cd dotfiles
./install.sh
```



### install

```
# /etc/pacman-mirrors.conf
Method=rank
OnlyCountry = Japan

pacman-mirrors --fasttrack
pacman -Syu
```
