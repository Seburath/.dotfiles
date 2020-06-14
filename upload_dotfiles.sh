pacman -Qqen > pacman-pkglist.txt
yay -Qqen > yay-pkglist.txt

cp ~/.zshrc .zshrc
cp ~/.vimrc .vimrc
cp ~/.oh-my-zsh/themes/intheloop.zsh-theme fire.zsh-theme

cp -r ~/.config/terminator/* .config/terminator/*
cp -r ~/.config/xfce4/* .config/xfce4/*

sudo chmod -R ugo+rwX .

sudo git add *
git commit -m 'dotfiles update'
git push
#pacman -S - < pkglist.txt
