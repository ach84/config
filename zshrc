# Set up the prompt

autoload -Uz promptinit
promptinit

#prompt adam1 plain blue
#prompt adam2
#prompt pws
#prompt fade
#prompt fire
#prompt oliver
#prompt default
#prompt redhat
#prompt suse
#prompt walters

setopt histignorealldups
setopt no_share_history

autoload -U colors && colors

# env
export EDITOR=vim
export VISUAL=vim
export LS_COLORS='*.deb=01;31'
export PROMPT='%K{plain}%n@%m%k %B%F{214}%(4~|...|)%3~%F{white} %# %b%f%k'

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
TERM=xterm-256color
PATH="$HOME/bin:/sbin:/usr/sbin:$PATH"

# Use modern completion system
autoload -Uz compinit
compinit

source ~/.aliases

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
