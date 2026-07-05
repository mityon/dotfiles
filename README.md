# dotfiles

macOS 向けの個人設定ファイルです。

## Install

```sh
./install.sh
```

既存の配置先が通常ファイルまたは通常ディレクトリの場合、`install.sh` は上書きせずに停止します。

## Structure

```text
home/
  zsh/
    .zshrc
    conf.d/
      path.zsh
      env.zsh
      options.zsh
      completion.zsh
      keybind.zsh
      aliases.zsh
      local.zsh.example
  tmux/
    .tmux.conf
  vim/
    .vimrc

config/
  nvim/
```

ホーム直下に置く設定は `home/<tool>/`、XDG 配下に置く設定は `config/<tool>/` で管理します。
