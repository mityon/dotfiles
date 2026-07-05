## Key bindings and word movement behavior.

## Use vi key bindings and keep Ctrl-R history search.
bindkey -v
bindkey '^R' history-incremental-search-backward

autoload -Uz select-word-style
select-word-style default

## Treat / as a separator so Ctrl-W can delete one path segment at a time.
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

