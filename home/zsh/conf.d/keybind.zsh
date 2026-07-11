## Key bindings and word movement behavior.

## Use vi key bindings and keep Ctrl-R history search.
bindkey -v
bindkey '^R' history-incremental-search-backward

autoload -Uz history-search-end

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

## Search history entries that start with the current input.
bindkey '^P' history-beginning-search-backward-end
bindkey '^N' history-beginning-search-forward-end

autoload -Uz select-word-style
select-word-style default

## Treat / as a separator so Ctrl-W can delete one path segment at a time.
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified
