## PATH settings for Apple Silicon Homebrew and related tools.
## Put PATH changes early so later shell initialization finds these commands.

export PATH="/opt/homebrew/bin:${PATH}"
export PATH="/opt/homebrew/opt/ncurses/bin:${PATH}"

## Uncomment if yarn global binaries are needed on this machine.
# export PATH="${PATH}:$(yarn global bin)"

