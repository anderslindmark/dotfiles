# The following lines were added by compinstall
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z} r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original false
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep nomatch
bindkey -e
# End of lines configured by zsh-newuser-install

# Prompt
export PS1='%U[%B%n@%m%b] [%B%~%b] %#%u '

# Make delete-button behave
bindkey "^[[3~" delete-char

# Language and term
export LC_ALL="en_US.UTF-8"
export TERM="screen-256color"

export EDITOR="vim"

# Load external stuff
source ~/.zsh/aliases.zsh

