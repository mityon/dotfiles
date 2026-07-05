## Completion initialization and matching behavior.

autoload -Uz compinit
compinit

## Match lowercase input against uppercase candidates.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## Make completion candidates easier to scan and select interactively.
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
