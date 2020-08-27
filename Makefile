install:
	sudo pacman -S \
		zsh \
		terminator \
		git \
		python3 \
		python-pip \
		fzf \
		hub

#oh-myzsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#oh-my-zsh
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

symlinks:
	ln -s -f `pwd`/zshrc ~/.zshrc
	ln -s -f `pwd`/vimrc ~/.vimrc
<<<<<<< HEAD
	ln -s -f `pwd`/config/terminator/ ~/.config/terminator/
	ln -s -f `pwd`/config/xfce4/ ~/.config/xfce4/
	ln -s -f `pwd`/oh-my-zsh/ ~/.oh-my-zsh/
=======
	#ln -s -f `pwd`/config/terminator/ ~/.config/terminator/
	#ln -s -f `pwd`/config/xfce4/ ~/.config/xfce4/
	#ln -s -f `pwd`/oh-my-zsh/ ~/.oh-my-zsh/
>>>>>>> 14ae1ee910e2b490079f068d818a3919e7cc2fa7

.PHONY: install symlinks
