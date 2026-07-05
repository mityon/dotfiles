## Completion initialization and matching behavior.

autoload -Uz compinit
compinit

## Match lowercase input against uppercase candidates.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

