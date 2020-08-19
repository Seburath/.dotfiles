install:
	sudo pacman -S \
		zsh \
		terminator \
		git \
		python3 \
		python-pip \
		fzf \
		hub


symlinks:
	ln -s -f `pwd`/zshrc ~/.zshrc
	ln -s -f `pwd`/vimrc ~/.vimrc
	#ln -s -f `pwd`/config/terminator/ ~/.config/terminator/
	ln -s -f `pwd`/config/xfce4/ ~/.config/xfce4/
	#ln -s -f `pwd`/oh-my-zsh/ ~/.oh-my-zsh/
