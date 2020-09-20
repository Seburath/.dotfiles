/usr/bin/setxkbmap -option "ctrl:nocaps"

set -o vi

alias wifi='sudo wifi-menu'

alias v='nvim '
alias spells=' v ~/.zshrc '
alias vspells='v ~/.config/nvim/init.vim'

alias gs='git status '

alias portal=' '
alias serve=''

alias pullchannel='youtube-dl -f best -ciw -o "%(title)s.%(ext)s" -v '
alias pullsong='youtube-dl -x --audio-format mp3 '

alias ls='ls --color=auto'
alias s=' sudo '
alias p=' python3 '
alias pip=' pip3 '
alias t='tree -C -L 1'


export ZSH="/home/sebu/.oh-my-zsh"

ZSH_THEME="fire"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git)

source $ZSH/oh-my-zsh.sh


export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi
