## Load external zsh plugins managed by Sheldon.

if command -v sheldon >/dev/null 2>&1; then
  eval "$(sheldon source)"
fi
