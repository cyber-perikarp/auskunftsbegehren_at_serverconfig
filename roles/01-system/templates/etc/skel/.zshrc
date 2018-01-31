# ZSH VARS
DISABLE_AUTO_UPDATE="true"
ZSH_THEME="deadda7a-zsh"
export UPDATE_ZSH_DAYS=3
HIST_STAMPS="dd.mm.yyyy"
ZSH_CUSTOM=~/.zsh-custom
plugins=(git common-aliases gpg-agent github pip sudo systemd powerline extract zsh-interactive-cd zsh-256color)

# EXPORT things
export ZSH=~/.oh-my-zsh
export ANSIBLE_NOCOWS=1
export LANG=en_US.UTF-8
export PATH=$HOME/bin:/usr/local/bin:/opt/metasploit-framework/bin:$PATH
export LS_COLORS="di=1;34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
alias fucking="sudo"

setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt always_to_end
setopt complete_in_word
unsetopt list_beep
zmodload zsh/complist
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Z}{a-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
[ -n "${terminfo[kcbt]}" ] && bindkey "${terminfo[kcbt]}" reverse-menu-complete

# Home
[ -n "${terminfo[khome]}" ] && bindkey "${terminfo[khome]}" beginning-of-line
# End
[ -n "${terminfo[kend]}" ] && bindkey "${terminfo[kend]}" end-of-line
# Backspace
[ -n "${terminfo[kbs]}" ] && bindkey "${terminfo[kbs]}" backward-delete-char
# Delete
[ -n "${terminfo[kdch1]}" ] && bindkey "${terminfo[kdch1]}" delete-char
# Up-arrow
[ -n "${terminfo[kcuu1]}" ] && bindkey "${terminfo[kcuu1]}" up-line-or-history
# Down-arrow
[ -n "${terminfo[kcud1]}" ] && bindkey "${terminfo[kcud1]}" down-line-or-history
# Left-arrow
[ -n "${terminfo[kcub1]}" ] && bindkey "${terminfo[kcub1]}" backward-char
# Right-arrow
[ -n "${terminfo[kcuf1]}" ] && bindkey "${terminfo[kcuf1]}" forward-char

# Manual installed Plugins
source ~/.zsh-custom/plugins/zsh-git-prompt/zshrc.sh
source $ZSH/oh-my-zsh.sh
source ~/.zsh-custom/plugins/zsh-completions/zsh-completions.plugin.zsh
source ~/.zsh-custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Custom functions
source ~/.zsh-custom/functions/mkcd.zsh

# startup things
neofetch
echo "\n"
fortune -s | lolcat
echo "\nSession started at: $(date)" | lolcat

source .zsh-userconfig
