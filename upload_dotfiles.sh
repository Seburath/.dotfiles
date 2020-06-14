pacman -Qqen > pacman-pkglist.txt
yay -Qqen > yay-pkglist.txt
cp ~/.zshrc .zshrc
cp ~/.vimrc .vimrc

cp -r ~/.config/ .config
cp ~/.oh-my-zsh/themes/intheloop.zsh-theme oh-my-zsh .oh-my-zsh/themes/intheloop.zsh-theme

sudo git add *
git commit -m 'dotfiles update'
git push
#pacman -S - < pkglist.txt
