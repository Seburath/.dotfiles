/usr/bin/setxkbmap -option "ctrl:nocaps"

set -o vi

alias spells=' v ~/.zshrc '

alias gs='git status '

alias v='nvim '
alias vim='nvim '
alias vspells='v ~/.config/nvim/init.vim'

alias head='cd /home/casa/CyberHead '


alias rc=' v ~/.config/nvim/init.vim'
alias rccolor=' v ~/.config/nvim/pack/onedark/opt/onedark.vim/colors/onedark.vim'

alias portal=' '

alias pullchannel='youtube-dl -f best -ciw -o "%(title)s.%(ext)s" -v '
alias pullsong='youtube-dl -x --audio-format mp3 '

alias ls='ls --color=auto'
alias s=' sudo '
alias p=' python3 '
alias pip=' pip3 '

alias t='tree -C -L 1'

alias serve=''

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/sebu/.oh-my-zsh"

ZSH_THEME="fire"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ubuntu/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/casa/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/casa/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ubuntu/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
