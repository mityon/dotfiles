## Core zsh behavior: history, prompt, and shell options.

autoload -Uz colors
colors

## Keep a large shared history across terminal sessions.
HISTFILE="${HOME}/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups
setopt share_history
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_find_no_dups
setopt hist_save_no_dups
setopt hist_no_store

## Use a compact prompt and keep the right prompt empty.
PROMPT='%n@%m:%~%# '
RPROMPT=''

## Disable terminal beep and keep a directory stack when changing directories.
setopt no_beep
setopt auto_pushd
setopt pushd_ignore_dups

## Move to a directory by typing its path, and allow compact recursive globbing.
setopt auto_cd
setopt globstarshort

## vcs_info is kept disabled because the current prompt does not show VCS state.
# autoload -Uz vcs_info
# autoload -Uz add-zsh-hook
# zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
# zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'
# function _update_vcs_info_msg() {
#   LANG=en_US.UTF-8 vcs_info
#   RPROMPT="${vcs_info_msg_0_}"
# }
# add-zsh-hook precmd _update_vcs_info_msg
