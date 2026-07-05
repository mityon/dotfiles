#!/bin/bash

set -euo pipefail

repo_dir="$(cd "$(dirname "$0")" && pwd)"

if [ "$(uname)" != "Darwin" ]; then
  echo "This dotfiles installer is intended for macOS." >&2
  exit 1
fi

link_file() {
  local source_path="$1"
  local target_path="$2"

  if [ -L "$target_path" ]; then
    unlink "$target_path"
  fi

  if [ -e "$target_path" ] && [ ! -L "$target_path" ]; then
    echo "Refusing to replace existing non-symlink: $target_path" >&2
    exit 1
  fi

  ln -s "$source_path" "$target_path"
  echo "Linked $target_path -> $source_path"
}

mkdir -p "${HOME}/.config"

link_file "${repo_dir}/home/zsh/.zshrc" "${HOME}/.zshrc"
link_file "${repo_dir}/home/zsh" "${HOME}/.zsh.d"
link_file "${repo_dir}/home/tmux/.tmux.conf" "${HOME}/.tmux.conf"
link_file "${repo_dir}/home/vim/.vimrc" "${HOME}/.vimrc"
link_file "${repo_dir}/config/nvim" "${HOME}/.config/nvim"
link_file "${repo_dir}/config/ripgrep" "${HOME}/.config/ripgrep"
link_file "${repo_dir}/config/bat" "${HOME}/.config/bat"
link_file "${repo_dir}/config/sheldon" "${HOME}/.config/sheldon"
