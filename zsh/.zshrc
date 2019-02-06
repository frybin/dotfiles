# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/frybin/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
eval `keychain --eval id_rsa --quiet`
export EDITOR='vim'
export VISUAL='vim'

alias cbw="wal -i $HOME/.wallpapers -g -o $HOME/.config/conky/pywal_conky.py"
alias um="udiskie-umount -e -d -a"

(cat ~/.cache/wal/sequences &)

source ~/.cache/wal/colors-tty.sh
