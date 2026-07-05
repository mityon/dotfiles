## Load external zsh plugins managed by Sheldon.

if command -v sheldon >/dev/null 2>&1; then
  eval "$(sheldon source)"
fi

## Enable zoxide's directory-jump commands when it is installed.
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi
