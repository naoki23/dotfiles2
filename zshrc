autoload -Uz compinit promptinit
compinit
promptinit

# alias ============================
case ${OSTYPE} in
    linux*)
        alias ls='ls --color=auto --group-directories-first'
        ;;
    darwin*)
        alias ls='ls -FG'
        ;;
esac
alias ll='ls -hl'
alias la='ll -a'
alias grep='grep --color'

# prompt ===========================
autoload -Uz colors && colors

local p_cdir="%{${fg[blue]}%}[%~]%{${reset_color}%}"$'\n'
local p_info="${WINDOW:+"[$WINDOW]"}"
local p_mark="%B%{${fg[green]}%}%(!,#,>)%{${reset_color}%}%b"
PROMPT=" $p_cdir$p_info $p_mark "
RPROMPT="%{${fg[yellow]}%}[%D %*]%{${reset_color}%}"

# zsh plugin ========================


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/naokishimatani/.zshrc'
# End of lines added by compinstall
