## zsh entrypoint.
## Keep this file small; put actual settings in conf.d files by responsibility.

zsh_conf="${HOME}/.zsh.d/conf.d"

source "${zsh_conf}/path.zsh"
source "${zsh_conf}/env.zsh"
source "${zsh_conf}/options.zsh"
source "${zsh_conf}/completion.zsh"
source "${zsh_conf}/keybind.zsh"
source "${zsh_conf}/aliases.zsh"

## local.zsh is intentionally untracked for machine-specific overrides.
if [ -f "${zsh_conf}/local.zsh" ]; then
  source "${zsh_conf}/local.zsh"
fi

