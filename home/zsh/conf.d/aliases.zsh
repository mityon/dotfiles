## Common aliases for safer commands and shorter Git operations.

alias rm='rm -i'
alias cp='cp -i'
alias grep='grep --color=always'
alias mkdir='mkdir -p'

alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gcl='git clone'
alias gr='git remote -v'
alias gl='git log --pretty=format:"%C(yellow)%h%Creset %C(magenta)%ci%Creset%n%C(cyan)%an <%ae>%Creset%n%B"'
alias glp='git log -p'
alias glg='git log --graph --pretty=format:"%C(yellow)%h%Creset %C(magenta)%ci%Creset%n%C(cyan)%an <%ae>%Creset%n%B"'

## macOS BSD ls color aliases.
alias ls='ls -G'
alias la='ls -alG'
alias ll='ls -lG'

