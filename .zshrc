# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/spencer/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# vim-style exit
alias :q='exit'

# use Neovim instead of Vim
alias vim='nvim'

# use Neovim for git commit messages
GIT_EDITOR=nvim

# colourful prompt with git info

setopt prompt_subst
RPROMPT="%F{magenta}\$(git symbolic-ref --short HEAD 2> /dev/null)"
PROMPT="%F{green}%n@%m:%F{blue}%~\$vsc_info_msg_0_%f%# "
zstyle ':vcs_info:git:*' formats '%b'

TERM='xterm-256color'
