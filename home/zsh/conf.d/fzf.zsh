## fzf integration with ripgrep file discovery and bat previews.

if command -v fzf >/dev/null 2>&1; then
  ## Use ripgrep for file candidates so ignore rules are respected.
  export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'
  export FZF_CTRL_T_COMMAND="${FZF_DEFAULT_COMMAND}"

  ## Keep global options generic; file previews are added only to file pickers.
  export FZF_DEFAULT_OPTS='--height=40% --layout=reverse --border'

  ## Enable fzf's zsh key bindings and fuzzy completion.
  source <(fzf --zsh)

  ## Select a file with bat preview and open it in the current editor.
  ff() {
    local file
    file="$(
      fzf \
        --preview 'bat --style=numbers --color=always --line-range=:300 {} 2>/dev/null' \
        --preview-window='right:60%:wrap'
    )" || return

    "${EDITOR:-vim}" "$file"
  }

  ## Search text with ripgrep, preview the match, and open it at the selected line.
  rgf() {
    local selected file line
    selected="$(
      fzf --ansi --disabled \
        --bind 'start:reload:rg --column --line-number --no-heading --color=always --smart-case ""' \
        --bind 'change:reload:rg --column --line-number --no-heading --color=always --smart-case {q} || true' \
        --delimiter ':' \
        --preview 'bat --style=numbers --color=always --highlight-line {2} {1} 2>/dev/null' \
        --preview-window 'right:60%:+{2}-/2:wrap'
    )" || return

    file="${selected%%:*}"
    line="${selected#*:}"
    line="${line%%:*}"
    "${EDITOR:-vim}" "$file" "+${line}"
  }
fi
