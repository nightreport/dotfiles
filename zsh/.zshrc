# The following lines were added by compinstall
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"


setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt appendhistory


bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
source ~/.profile

zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# WORDCHARS='*?[]~/&;!#$%^(){}<>'
WORDCHARS='*?[]~&;!#$%^(){}<>'
zstyle ':completion:*' completer _complete _ignored _correct
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._- ]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/temshop/.zshrc'

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt autocd extendedglob
# End of lines configured by zsh-newuser-install
#
autoload -Uz compinit
compinit


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export TERM=xterm-256color
export MANPAGER='nvim +Man!'
export EDITOR='nv'
# Move QT_STYLE back to ./.profile if causes errors
#


export QT_QPA_PLATFORMTHEME=qt6ct
export QT_STYLE_OVERRIDE=kvantum

# awrit
export PATH="/home/temshop/.local/bin:$PATH"

source /home/temshop/.config/broot/launcher/bash/br
