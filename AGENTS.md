# Repository Guidelines

このリポジトリは macOS 向けの個人 dotfiles を管理します。

## 構成方針

- ホーム直下に配置する設定は `home/<tool>/` に置き、ファイル名は実際の配置名に合わせる。
  - 例: `home/zsh/.zshrc` -> `~/.zshrc`
  - 例: `home/tmux/.tmux.conf` -> `~/.tmux.conf`
- XDG 配下の設定は `config/<tool>/` に置く。
  - 例: `config/nvim` -> `~/.config/nvim`
- ツール単位でディレクトリを分け、別ツールの設定を同じファイルに混ぜない。
- macOS 専用として扱うため、Linux 向け分岐は原則追加しない。

## zsh の分割方針

`home/zsh/.zshrc` は入口に限定し、実際の設定は `home/zsh/conf.d/*.zsh` に分ける。

- `path.zsh`: Homebrew など PATH の設定
- `env.zsh`: 環境変数
- `options.zsh`: history、prompt、`setopt` など zsh の基本挙動
- `completion.zsh`: 補完初期化と補完スタイル
- `keybind.zsh`: キーバインドと単語移動の設定
- `aliases.zsh`: alias
- `local.zsh.example`: Git 管理しないローカル設定の例

数字プレフィックスは使わない。読み込み順が必要な場合は `.zshrc` で `source` の順番を明示する。

## コメント方針

- 設定には、意図が分かる短いコメントを付ける。
- コマンド名やオプション名を読めば分かるだけのコメントは避ける。
- 無効化した設定を残す場合は、なぜ残すのか、いつ戻す可能性があるのかが分かるコメントを添える。
- 秘密情報、端末固有のパス、一時的な実験設定は `local.zsh` に置き、Git 管理しない。

