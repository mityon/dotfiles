## Initialize Starship prompt after the rest of the interactive shell setup.

if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi
