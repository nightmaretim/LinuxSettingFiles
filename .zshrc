#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY
# Command history configuration
#
HISTFILE=~/.zsh_history
HISTSIZE=600000
SAVEHIST=600000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data 

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors
# Environment variable configuration
#
# LANG
#
export LANG=ja_JP.UTF-8

##########################fromナレッジエース
# プロンプトの設定
autoload colors
colors
PROMPT="%{${fg[blue]}%}[%n@%m] %(!.#.$) %{${reset_color}%}"
PROMPT2="%{${fg[blue]}%}%_> %{${reset_color}%}"
SPROMPT="%{${fg[red]}%}correct: %R -> %r [nyae]? %{${reset_color}%}"
RPROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"
##########################from 漢###########################
## Default shell configuration
##
## set prompt
##
##case ${UID} in
##0)
##	PROMPT="%B%{[31m%}%/#%{[m%}%b "
##	PROMPT2="%B%{[31m%}%_#%{[m%}%b "
##	SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
##	[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
##		PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
##	;;
##*)
##	PROMPT="%{[31m%}%/%%%{[m%} "
##	PROMPT2="%{[31m%}%_%%%{[m%} "
##	SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
##	[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
##		PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
##	;;
##esac
##
## set terminal title including current directory
##
##case "${TERM}" in
##kterm*|xterm)
##	precmd() {
##		echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
##	}
##	;;
##esac 
