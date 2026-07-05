## macOS environment variables shared by interactive shells.

## Install Homebrew cask applications into /Applications.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

## Enable colored output for BSD ls on macOS.
export CLICOLOR=1
export LSCOLORS=gxhxcxdxcxegedabagacadd

## ripgrep only loads a config file when this path is set.
export RIPGREP_CONFIG_PATH="${HOME}/.config/ripgrep/ripgreprc"

## bat uses this XDG config location by default, but keeping it explicit helps symlinked setups.
export BAT_CONFIG_PATH="${HOME}/.config/bat/config"
